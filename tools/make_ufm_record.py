#!/usr/bin/env python3
"""
Build the calibration record that src/ufm_config.v reads out of the MachXO2 User
Flash Memory at boot, and write it as a Diamond .mem file.

The record is 2 UFM pages (32 bytes) at UFM page 0.  Layout, matching the header
comment in src/ufm_config.v:

    off  size  field                      I2C register
     0    1    magic0  0x4F 'O'
     1    1    magic1  0x57 'W'
     2    1    layout version, 0x01
     3    1    reserved
     4    4    pulse_width_lower_limit    0x00..0x03, little endian
     8    4    pulse_width_upper_limit    0x04..0x07
    12    4    rate_lower_limit           0x08..0x0B
    16    2    drive_current_limit        0x10..0x11
    18    2    pwm_current_limit          0x12..0x13
    20    2    cw_current_limit           0x14..0x15
    22    8    reserved
    30    2    checksum, little endian: 16-bit truncated sum of bytes 0..29

Byte order note.  Diamond writes a .mem row most significant byte first: byte 15
of the page is on the LEFT of the row and byte 0 on the RIGHT, the reverse of the
order the FPGA reads them.  This script handles that; --decode reads it back so
you can confirm a file before programming it.

Programming, on the bench:

    Diamond Deployment Tool          build a UFM JEDEC from this .mem
    Diamond Programmer               operation "FLASH UFM Erase,Program,Verify"

That operation touches only the UFM.  Firmware updates must use "FLASH CFG
Erase,Program,Verify", which touches only the Configuration Flash and leaves this
record alone.  "FLASH Erase,Program,Verify" erases both and wipes the
calibration.

Checking the result over I2C:

    register 0x31   loader status
                    bit0 valid, bit1 done, bit2 magic ok, bit3 checksum ok,
                    bit4 timeout, bit5 committed
                    0x2F  = record loaded and applied
                    0x02  = no valid record, hard-coded defaults in use
    register 0x32   layout version byte from the record
    registers 0x00..0x0B, 0x10..0x15   read the limits back

Getting the byte order wrong cannot damage anything: the magic fails, the FPGA
keeps its hard-coded defaults, and 0x31 reads 0x02.

Usage:
    python tools/make_ufm_record.py --out calibration.mem \\
        --pulse-width-lower 0x000000 --pulse-width-upper 0x00035c \\
        --rate-lower 0x0112a9 --drive-current 0x0a80 \\
        --pwm-current 0x036b --cw-current 0x036b

    python tools/make_ufm_record.py --decode calibration.mem
"""

import argparse
import sys

MAGIC = (0x4F, 0x57)
VERSION = 0x01
RECORD_BYTES = 32
PAGE_BYTES = 16

# Defaults are the hard-coded reset values in src/registers.v, so a record built
# with no arguments reproduces current behaviour.
DEFAULTS = {
    "pulse_width_lower": 0x00000000,
    "pulse_width_upper": 0x0000035C,
    "rate_lower":        0x000112A9,
    "drive_current":     0x0A80,
    "pwm_current":       0x036B,
    "cw_current":        0x036B,
}

FIELDS = [
    # offset, width, key,                 I2C register, description
    (4,  4, "pulse_width_lower", 0x00, "pulse_width_lower_limit"),
    (8,  4, "pulse_width_upper", 0x04, "pulse_width_upper_limit"),
    (12, 4, "rate_lower",        0x08, "rate_lower_limit"),
    (16, 2, "drive_current",     0x10, "drive_current_limit"),
    (18, 2, "pwm_current",       0x12, "pwm_current_limit"),
    (20, 2, "cw_current",        0x14, "cw_current_limit"),
]


def build_record(values):
    rec = bytearray(RECORD_BYTES)
    rec[0], rec[1] = MAGIC
    rec[2] = VERSION
    rec[3] = 0x00

    for off, width, key, _reg, name in FIELDS:
        v = values[key]
        limit = 1 << (8 * width)
        if not 0 <= v < limit:
            raise ValueError("%s = 0x%X does not fit in %d bytes" % (name, v, width))
        rec[off:off + width] = v.to_bytes(width, "little")

    checksum = sum(rec[0:30]) & 0xFFFF
    rec[30:32] = checksum.to_bytes(2, "little")
    return bytes(rec)


def parse_record(rec):
    """Inverse of build_record. Returns (values, checks)."""
    values = {key: int.from_bytes(rec[off:off + width], "little")
              for off, width, key, _reg, _name in FIELDS}
    checks = {
        "magic_ok": (rec[0], rec[1]) == MAGIC,
        "version": rec[2],
        "checksum_stored": int.from_bytes(rec[30:32], "little"),
        "checksum_computed": sum(rec[0:30]) & 0xFFFF,
    }
    checks["checksum_ok"] = checks["checksum_stored"] == checks["checksum_computed"]
    return values, checks


def to_mem(rec):
    """Diamond .mem hex rows, one page per row, byte 15 leftmost."""
    rows = []
    for base in range(0, len(rec), PAGE_BYTES):
        page = rec[base:base + PAGE_BYTES]
        rows.append("".join("%02X" % b for b in reversed(page)))
    return rows


def from_mem(text):
    rec = bytearray()
    for lineno, raw in enumerate(text.splitlines(), 1):
        line = raw.split("//")[0].split("#")[0].strip()
        if not line:
            continue
        if len(line) != PAGE_BYTES * 2:
            raise ValueError("line %d: expected %d hex chars, got %d"
                             % (lineno, PAGE_BYTES * 2, len(line)))
        page = bytes.fromhex(line)
        rec.extend(reversed(page))      # back into read order
    return bytes(rec)


def dump(rec):
    values, checks = parse_record(rec)
    out = []
    out.append("record, in the order the FPGA reads it:")
    for base in range(0, len(rec), PAGE_BYTES):
        page = rec[base:base + PAGE_BYTES]
        out.append("  UFM page %d, offset %2d: %s"
                   % (base // PAGE_BYTES, base,
                      " ".join("%02X" % b for b in page)))
    out.append("")
    out.append("  magic            %s" % ("OK" if checks["magic_ok"] else "BAD"))
    out.append("  layout version   0x%02X" % checks["version"])
    out.append("  checksum         0x%04X stored, 0x%04X computed, %s"
               % (checks["checksum_stored"], checks["checksum_computed"],
                  "OK" if checks["checksum_ok"] else "MISMATCH"))
    out.append("")
    out.append("  I2C reg  field                      value")
    for off, width, key, reg, name in FIELDS:
        out.append("  0x%02X     %-26s 0x%0*X"
                   % (reg, name, width * 2, values[key]))
    return "\n".join(out)


def main(argv=None):
    p = argparse.ArgumentParser(
        description="Build or inspect the MachXO2 UFM calibration record.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__)
    p.add_argument("--out", metavar="FILE",
                   help="write the Diamond .mem file here")
    p.add_argument("--decode", metavar="FILE",
                   help="read a .mem file back and print what the FPGA would see")

    def num(s):
        return int(s, 0)

    p.add_argument("--pulse-width-lower", type=num, default=DEFAULTS["pulse_width_lower"],
                   help="pulse_width_lower_limit, 32 bit (default 0x%08X)"
                        % DEFAULTS["pulse_width_lower"])
    p.add_argument("--pulse-width-upper", type=num, default=DEFAULTS["pulse_width_upper"],
                   help="pulse_width_upper_limit, 32 bit (default 0x%08X)"
                        % DEFAULTS["pulse_width_upper"])
    p.add_argument("--rate-lower", type=num, default=DEFAULTS["rate_lower"],
                   help="rate_lower_limit, 32 bit (default 0x%08X)" % DEFAULTS["rate_lower"])
    p.add_argument("--drive-current", type=num, default=DEFAULTS["drive_current"],
                   help="drive_current_limit, 16 bit (default 0x%04X)" % DEFAULTS["drive_current"])
    p.add_argument("--pwm-current", type=num, default=DEFAULTS["pwm_current"],
                   help="pwm_current_limit, 16 bit (default 0x%04X)" % DEFAULTS["pwm_current"])
    p.add_argument("--cw-current", type=num, default=DEFAULTS["cw_current"],
                   help="cw_current_limit, 16 bit (default 0x%04X)" % DEFAULTS["cw_current"])

    args = p.parse_args(argv)

    if args.decode:
        with open(args.decode, "r") as f:
            rec = from_mem(f.read())
        if len(rec) != RECORD_BYTES:
            print("warning: file holds %d bytes, the loader reads %d"
                  % (len(rec), RECORD_BYTES), file=sys.stderr)
        print(dump(rec[:RECORD_BYTES]))
        return 0

    values = {
        "pulse_width_lower": args.pulse_width_lower,
        "pulse_width_upper": args.pulse_width_upper,
        "rate_lower":        args.rate_lower,
        "drive_current":     args.drive_current,
        "pwm_current":       args.pwm_current,
        "cw_current":        args.cw_current,
    }
    rec = build_record(values)
    print(dump(rec))

    rows = to_mem(rec)
    print("")
    print("Diamond .mem rows, byte 15 leftmost:")
    for i, row in enumerate(rows):
        print("  %s   // UFM page %d" % (row, i))

    if args.out:
        with open(args.out, "w") as f:
            f.write("\n".join(rows) + "\n")
        print("")
        print("wrote %s" % args.out)
    return 0


if __name__ == "__main__":
    sys.exit(main())
