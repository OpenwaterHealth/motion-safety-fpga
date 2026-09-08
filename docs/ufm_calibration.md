# Calibration defaults in User Flash Memory

The safety limits used to be fixed at the reset values written into
[`src/registers.v`](../src/registers.v), so changing them after calibration meant
rebuilding the bitstream. They now come out of the MachXO2 User Flash Memory
(UFM) at boot.

The UFM is a separate Flash sector next to the Configuration Flash. It is not
part of the `.jed` bitstream, so a record written there after calibration
survives a firmware update and a power cycle. `bitgen` confirms this for the
current build:

```
UFM Size:        639 Pages (128*639 Bits).
UFM Utilization: General Purpose Flash Memory.
Initialized UFM Pages:  0 Page.
```

## One EFB, shared

The MachXO2 has a single Embedded Function Block. This design uses it for two
things at once:

- the hardened primary I2C configuration port on `scl_cfg`/`sda_cfg`, used for
  firmware updates, and
- the User Flash Memory that holds the calibration record.

They are the same block, so there is exactly one wrapper, `efb_i2c.v`, generated
with both `EFB_I2C1` and `EFB_UFM` enabled. Instantiating a second one fails at
map with `Design has 2 EFBs. Device only allows 1 EFB.` - note that **synthesis
passes**, so this only shows up late.

Its WISHBONE port runs at 50 MHz (`buf_clk`), because `I2C1_CLK_DIVIDER = 125`
was generated for that clock. Changing the WISHBONE clock without regenerating
the IP changes the I2C SCL rate. The register file runs at 25 MHz, so
`ufm_config` hands each restored byte across with a request/acknowledge toggle
handshake rather than relying on the 2:1 ratio.

While the configuration interface is open, the device temporarily disables the
Power Controller, GSR, the hardened SPI port and the hardened primary I2C port.
They are restored only after `ISC_DISABLE` (`0x26`) is followed by `BYPASS`
(`0xFF FF FF FF`), so the loader always sends both - leaving the bypass out
risks the firmware update port staying dead after boot. The simulation asserts
that the bypass frame is issued.

## What happens at boot

[`src/ufm_config.v`](../src/ufm_config.v) reads two UFM pages over the EFB
WISHBONE configuration port about a millisecond after reset and writes the
values into `registers.v` through the same address decode the I2C master uses.

If the UFM is blank, or the record fails its magic or checksum, nothing is
written and the hard-coded reset defaults in `registers.v` stand. An
uncalibrated or corrupted board comes up on conservative limits rather than
refusing to run, and says so in its status register.

`static_control` is deliberately **not** restored. The record's byte offsets map
onto register addresses `0x00..0x0B` and `0x10..0x15` only — there is no record
content that can reach `static_control` at `0x20`, so the laser enable and
error-check bits always come up from their reset state, never from Flash. The
testbench asserts this.

## Register map additions

| Register | Access | Meaning |
| --- | --- | --- |
| `0x31` | read | loader status |
| `0x32` | read | layout version byte from the record |

`0x31` bits:

| Bit | Meaning |
| --- | --- |
| 0 | `valid` — record checked out and was applied |
| 1 | `done` — the load attempt has finished, pass or fail |
| 2 | `magic ok` |
| 3 | `checksum ok` |
| 4 | `timeout` — the EFB did not respond, load abandoned |
| 5 | `committed` — the register file was written |

Two values worth recognising:

- `0x2F` — calibrated: record loaded and applied.
- `0x02` — not calibrated: no valid record, hard-coded defaults in use.

`committed` set with `valid` clear (`0x22`) means the register file was written
from a read the loader could not confirm on its second pass. Treat the board as
uncalibrated.

## Record layout

Two UFM pages, 32 bytes, at UFM page 0. Byte order matches the I2C register map.

| Offset | Size | Field | Register |
| --- | --- | --- | --- |
| 0 | 1 | magic `0x4F` `'O'` | |
| 1 | 1 | magic `0x57` `'W'` | |
| 2 | 1 | layout version, `0x01` | `0x32` |
| 3 | 1 | reserved | |
| 4 | 4 | `pulse_width_lower_limit`, little endian | `0x00..0x03` |
| 8 | 4 | `pulse_width_upper_limit` | `0x04..0x07` |
| 12 | 4 | `rate_lower_limit` | `0x08..0x0B` |
| 16 | 2 | `drive_current_limit` | `0x10..0x11` |
| 18 | 2 | `pwm_current_limit` | `0x12..0x13` |
| 20 | 2 | `cw_current_limit` | `0x14..0x15` |
| 22 | 8 | reserved | |
| 30 | 2 | checksum, little endian: 16-bit truncated sum of bytes 0..29 | |

## Writing a record

Build the `.mem` file:

```bash
python tools/make_ufm_record.py --out calibration.mem \
    --pulse-width-lower 0x000000 --pulse-width-upper 0x00035c \
    --rate-lower 0x0112a9 --drive-current 0x0a80 \
    --pwm-current 0x036b --cw-current 0x036b
```

With no arguments the tool reproduces the current hard-coded defaults, which is
a useful starting point. `--decode` reads a file back and prints what the FPGA
would see, so a file can be checked before it is programmed.

Diamond writes a `.mem` row **most significant byte first** — byte 15 of the page
is on the left of the row and byte 0 on the right, the reverse of the order the
FPGA reads them. The tool handles that. Getting it wrong cannot damage anything:
the magic fails, the board keeps its hard-coded defaults, and `0x31` reads
`0x02`.

Then use the Diamond Deployment Tool to build a UFM JEDEC from the `.mem`, and
Diamond Programmer to write it.

## I2C firmware updates and the UFM

The MCU can reprogram the FPGA over `scl_cfg`/`sda_cfg`. Whether that wipes the
calibration depends on the erase operand it sends. `ISC_ERASE` (`0x0E`) takes a
bitwise-OR of the memory spaces to erase (FPGA-TN-02155 Table 9.3):

| Bit | Erases |
| --- | --- |
| 16 | SRAM |
| 17 | Feature Row |
| 18 | Configuration Flash |
| 19 | **UFM** |

**The MCU's update sequence must set bit 18 and leave bit 19 clear.** If bit 19
is set, every field firmware update silently wipes the calibration record; the
board keeps running on the hard-coded defaults and register `0x31` drops from
`0x2F` to `0x02`. This is worth checking against what the MCU actually sends,
since it is not visible from the FPGA side.

## Programmer operations — this part matters

| Operation | Effect |
| --- | --- |
| `FLASH UFM Erase,Program,Verify` | writes the calibration record, leaves the firmware alone |
| `FLASH CFG Erase,Program,Verify` | **use this for firmware updates** — leaves the calibration record alone |
| `FLASH Erase,Program,Verify` | erases **both**, wiping the calibration |

A firmware update done with the plain `FLASH Erase,Program,Verify` operation
silently destroys the calibration. The board still runs afterwards, on the
hard-coded defaults, with `0x31` reading `0x02`.

[`Safety.lpf`](../Safety.lpf) pins `SYSCONFIG CONFIGURATION=CFG` so the bitstream
can never grow into the UFM sector and overwrite the record. This is the Diamond
default; it is stated explicitly because the consequence of it changing is silent
loss of calibration data.

## Simulation

```bash
iverilog -g2005 -o ufm_tb.out -s ufm_config_tb \
    sim/ufm_config_tb.v sim/ufm_efb_model.v src/ufm_config.v && vvp ufm_tb.out
```

[`sim/ufm_efb_model.v`](../sim/ufm_efb_model.v) is a behavioural stand-in for the
EFB configuration port, following FPGA-TN-02155 tables 9.3 and 9.6. The bench
covers a good record, a blank UFM, a bad checksum, an EFB that never
acknowledges, and — reading [`sim/calibration_example.mem`](../sim/calibration_example.mem)
straight from the generator — a cross-check that `tools/make_ufm_record.py` and
the RTL agree on the layout, the byte order and the checksum.
