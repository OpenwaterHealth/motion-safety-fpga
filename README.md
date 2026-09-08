# Open Motion FPGA Safety Driver 

This repository contains HDL code for implementing Safety driver on an FPGA.

Safety limits are loaded at boot from the MachXO2 User Flash Memory, outside the
bitstream, so calibration survives a firmware update. See
[docs/ufm_calibration.md](docs/ufm_calibration.md).
