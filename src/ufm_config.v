`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////////////////////////
// File: ufm_config.v
//
// Description:
//
// Boot time loader for the calibration limits held in the MachXO2 User Flash
// Memory (UFM).  The UFM is a Flash sector alongside the Configuration Flash and
// is not part of the .jed bitstream, so values written there after calibration
// survive a firmware update and a power cycle.
//
// After reset this module reads the record out of the UFM over the EFB WISHBONE
// configuration port and writes it into registers.v through a byte wide port
// that mirrors the I2C write path.  If the UFM is blank (uncalibrated board) or
// the record does not check out, nothing is written and the hard-coded reset
// defaults in registers.v stand.  cfg_status tells the MCU which happened, and
// is readable over I2C at register 0x31.
//
// Record layout - 2 UFM pages, 32 bytes, starting at UFM page UFM_PAGE:
//
//   off  size  field                      register
//    0    1    magic0  0x4F 'O'
//    1    1    magic1  0x57 'W'
//    2    1    layout version, 0x01
//    3    1    reserved
//    4    4    pulse_width_lower_limit    0x00..0x03, least significant byte first
//    8    4    pulse_width_upper_limit    0x04..0x07
//   12    4    rate_lower_limit           0x08..0x0B
//   ------------------------------------------------ page boundary
//   16    2    drive_current_limit        0x10..0x11
//   18    2    pwm_current_limit          0x12..0x13
//   20    2    cw_current_limit           0x14..0x15
//   22    8    reserved
//   30    2    checksum, least significant byte first:
//              16-bit truncated sum of record bytes 0..29
//
// Record byte order matches the I2C register map, so the byte at UFM offset 4 is
// the byte the MCU reads back at register 0x00 and the address mapping below is
// a subtract.  That mapping can only ever produce 0x00..0x0B and 0x10..0x15:
// there is no record content that can reach static_control at 0x20, so the laser
// enable and error check bits always come up from their reset state, never from
// Flash.
//
// The record is read twice.  The first pass only computes the magic and the
// checksum, the second pass repeats the read and writes the bytes out as they
// arrive.  Reading twice costs a few tens of microseconds once at boot and
// avoids buffering the record in 256 flip flops on a device that does not have
// them to spare.  If the second read disagrees with the first the checksum fails
// on the second pass too: cfg_valid stays low while cfg_committed is high, which
// tells the MCU the register file was written from a read it could not confirm.
//
// Command sequence, per FPGA-TN-02155 tables 9.3/9.6 and Lattice's own MicoEFB
// UFM driver:
//
//   0x74 08 00 00                enable configuration interface, transparent
//                                mode, Flash access (>= 5 us settling after)
//   0xB4 00 00 00 40 00 PP PP    set the page address pointer to UFM page PP PP
//                                (M field 0x4 selects the UFM sector)
//   0xCA 10 00 03                read UFM pages (M field 0x1 selects WISHBONE).
//                                A multi-page read repeats the page under the
//                                pointer, so the count is one more than wanted
//                                and the first 16 bytes are discarded.
//   0x26 00 00 00                disable configuration interface
//   0xFF FF FF FF                bypass / no-op, wakes the device back up
//
// The BYPASS frame is not optional here.  While the configuration interface is
// enabled the device temporarily disables the Power Controller, GSR, the
// hardened SPI port and the hardened Primary User I2C port - the same I2C port
// this board exposes on scl_cfg/sda_cfg for firmware updates.  map warns that
// those are restored only after 0x26 is followed by the Bypass command 0xFF, so
// leaving it out risks the MCU's firmware update path staying dead after boot.
//
// This module is the WISHBONE master for the EFB, it does not instantiate one.
// The MachXO2 has a single EFB and this design already instantiates it in top.v
// as efb_i2c, shared with the hardened I2C configuration port.  That EFB runs on
// the 50 MHz WISHBONE clock its I2C divider was generated for, while the
// register file runs at 25 MHz, so the byte write port crosses clock domains
// through a full request/acknowledge handshake rather than any timing
// assumption.
///////////////////////////////////////////////////////////////////////////////////////////////////

module ufm_config #(
    parameter integer UFM_PAGE   = 0,        // first UFM page of the record
    parameter integer BOOT_DELAY = 25000,    // ~1 ms @ 25 MHz before touching the EFB, 16 bit
    parameter integer EN_DELAY   = 250,      // ~10 us @ 25 MHz, TN-02155 wants >= 5 us
    parameter integer TIMEOUT    = 2500000   // ~100 ms @ 25 MHz watchdog; must fit in wdog, see below
)(
    input             wb_clk,                // EFB WISHBONE clock, 50 MHz
    input             reg_clk,               // register file clock, 25 MHz
    input             rstn,

    // WISHBONE master into the shared EFB (top.v: efb_i2c)
    output reg        wb_cyc_o,
    output reg        wb_stb_o,
    output reg        wb_we_o,
    output reg [7:0]  wb_adr_o,
    output reg [7:0]  wb_dat_o,
    input      [7:0]  wb_dat_i,
    input             wb_ack_i,

    // Byte write port into registers.v, same shape as the I2C write path.
    // reg_clk domain.
    output reg        cfg_we,
    output reg [7:0]  cfg_addr,
    output reg [7:0]  cfg_data,

    output            cfg_done,              // load attempt finished, pass or fail
    output            cfg_valid,             // record checked out and was written
    output     [7:0]  cfg_version,           // layout version byte from the record
    output     [7:0]  cfg_status
);

//--------------------------------------------------------------------------------------------------
// Record geometry
//--------------------------------------------------------------------------------------------------
localparam integer CFG_PAGES = 2;                       // pages actually wanted
localparam integer RX_BYTES  = (CFG_PAGES + 1) * 16;    // 48, includes the repeated page
localparam [15:0]  RD_COUNT  = CFG_PAGES + 1;           // page count field of the 0xCA command
localparam [13:0]  PAGE_ADDR = UFM_PAGE;

localparam [7:0] MAGIC0 = 8'h4F;
localparam [7:0] MAGIC1 = 8'h57;

localparam [4:0] OFF_DATA_LO = 5'd4;                    // first record byte that is register data
localparam [4:0] OFF_DATA_HI = 5'd21;                   // last one
localparam [4:0] OFF_CSUM_HI = 5'd29;                   // last byte covered by the checksum

//--------------------------------------------------------------------------------------------------
// EFB WISHBONE configuration port registers (FPGA-TN-02163 / MicoEFB.h)
//--------------------------------------------------------------------------------------------------
localparam [7:0] CFGCR   = 8'h70;   // control
localparam [7:0] CFGTXDR = 8'h71;   // transmit data
localparam [7:0] CFGSR   = 8'h72;   // status
localparam [7:0] CFGRXDR = 8'h73;   // receive data

localparam [7:0] CR_WBCE  = 8'h80;  // open the WISHBONE configuration frame
localparam [7:0] CR_CLOSE = 8'h00;  // close the frame, terminates the command

localparam [7:0] SR_TXFE  = 8'h20;  // transmit FIFO empty
localparam [7:0] SR_TXFF  = 8'h10;  // transmit FIFO full
localparam [7:0] SR_RXFE  = 8'h08;  // receive FIFO empty
localparam [7:0] SR_SSPI  = 8'h02;  // SSPI configuration port active
localparam [7:0] SR_I2C   = 8'h01;  // I2C configuration port active

//--------------------------------------------------------------------------------------------------
// Command byte stream.  Four frames, concatenated so there is a single transmit path.
//   frame 0  idx  0.. 3   enable configuration interface
//   frame 1  idx  4..11   set page address pointer
//   frame 2  idx 12..15   read UFM pages, receive data follows in the same frame
//   frame 3  idx 16..19   disable configuration interface
//   frame 4  idx 20..23   bypass, wakes the hardened I2C/SPI ports back up
// Frames 1 and 2 run twice, once to check the record and once to commit it.
//--------------------------------------------------------------------------------------------------
function [7:0] seq_byte;
    input [4:0] i;
    begin
        case (i)
            5'd0  : seq_byte = 8'h74;                        // ISC_ENABLE_X
            5'd1  : seq_byte = 8'h08;                        //   bit 19 set: Flash, not SRAM
            5'd2  : seq_byte = 8'h00;
            5'd3  : seq_byte = 8'h00;

            5'd4  : seq_byte = 8'hB4;                        // LSC_WRITE_ADDRESS
            5'd5  : seq_byte = 8'h00;
            5'd6  : seq_byte = 8'h00;
            5'd7  : seq_byte = 8'h00;
            5'd8  : seq_byte = 8'h40;                        //   M field 0x4: UFM sector
            5'd9  : seq_byte = 8'h00;
            5'd10 : seq_byte = {2'b00, PAGE_ADDR[13:8]};
            5'd11 : seq_byte = PAGE_ADDR[7:0];

            5'd12 : seq_byte = 8'hCA;                        // LSC_READ_UFM
            5'd13 : seq_byte = 8'h10;                        //   M field 0x1: WISHBONE
            5'd14 : seq_byte = RD_COUNT[15:8];
            5'd15 : seq_byte = RD_COUNT[7:0];

            5'd16 : seq_byte = 8'h26;                        // ISC_DISABLE
            5'd17 : seq_byte = 8'h00;
            5'd18 : seq_byte = 8'h00;
            5'd19 : seq_byte = 8'h00;

            5'd20 : seq_byte = 8'hFF;                        // ISC_NOOP / BYPASS,
            5'd21 : seq_byte = 8'hFF;                        //   restores the hardened
            5'd22 : seq_byte = 8'hFF;                        //   I2C and SPI ports
            5'd23 : seq_byte = 8'hFF;

            default : seq_byte = 8'h00;
        endcase
    end
endfunction

function [4:0] frame_first;
    input [2:0] f;
    begin
        case (f)
            3'd0 : frame_first = 5'd0;
            3'd1 : frame_first = 5'd4;
            3'd2 : frame_first = 5'd12;
            3'd3 : frame_first = 5'd16;
            default : frame_first = 5'd20;
        endcase
    end
endfunction

function [4:0] frame_last;
    input [2:0] f;
    begin
        case (f)
            3'd0 : frame_last = 5'd3;
            3'd1 : frame_last = 5'd11;
            3'd2 : frame_last = 5'd15;
            3'd3 : frame_last = 5'd19;
            default : frame_last = 5'd23;
        endcase
    end
endfunction

// Record offset to I2C register address.  Offsets 4..15 hold the 32-bit limits
// and land at 0x00..0x0B, offsets 16..21 hold the 16-bit current limits and land
// at 0x10..0x15.  Nothing else is ever emitted.
function [7:0] reg_addr;
    input [4:0] off;
    begin
        if (off < 5'd16) reg_addr = {4'h0, off[3:0] - 4'd4};
        else             reg_addr = {4'h1, off[3:0]};
    end
endfunction

wire [7:0] wb_dat_r = wb_dat_i;
wire       wb_ack   = wb_ack_i;

//--------------------------------------------------------------------------------------------------
// Sequencer
//--------------------------------------------------------------------------------------------------
localparam [3:0] S_BOOT   = 4'd0;   // settle after configuration before touching the EFB
localparam [3:0] S_OPEN   = 4'd1;   // CFGCR <= 0x80, open the frame
localparam [3:0] S_ACT_RD = 4'd2;   // read CFGSR, wait for the SSPI/I2C config ports idle
localparam [3:0] S_TXF_RD = 4'd3;   // read CFGSR, wait for the transmit FIFO not full
localparam [3:0] S_TX_WR  = 4'd4;   // CFGTXDR <= next command byte
localparam [3:0] S_TXE_RD = 4'd5;   // read CFGSR, wait for the transmit FIFO empty
localparam [3:0] S_RXE_RD = 4'd6;   // read CFGSR, wait for the receive FIFO not empty
localparam [3:0] S_RX_RD  = 4'd7;   // read CFGRXDR
localparam [3:0] S_CLOSE  = 4'd8;   // CFGCR <= 0x00, close the frame
localparam [3:0] S_DELAY  = 4'd9;   // inter frame delay
localparam [3:0] S_CHECK  = 4'd10;  // publish the outcome
localparam [3:0] S_DONE   = 4'd11;
localparam [3:0] S_XFER   = 4'd12;  // wait for the register domain to take the byte

reg [3:0]  state;
reg [2:0]  frame;
reg        pass;                    // 0 = check the record, 1 = write it out
reg [4:0]  tx_idx;
reg [5:0]  rx_cnt;
reg [15:0] delay_cnt;
reg [23:0] wdog;                    // must hold TIMEOUT; 24 bits covers 335 ms @ 50 MHz

reg        valid_wb;                // sequencer's own copy, crossed over below
reg [7:0]  ver_wb;
reg [15:0] csum;                    // running sum of record bytes 0..29
reg [7:0]  csum_lo;                 // record byte 30
reg [7:0]  csum_hi;                 // record byte 31
reg        magic0_ok;
reg        magic1_ok;

reg        magic_ok;
reg        csum_ok;
reg        committed;
reg        timeout;

// ---------------------------------------------------------------------------
// Clock domain crossing, wb_clk (50 MHz) -> reg_clk (25 MHz).
//
// The EFB runs on the WISHBONE clock its I2C divider was generated for, the
// register file runs at half that.  Each restored byte is handed over with a
// full request/acknowledge toggle handshake: the sequencer parks the address
// and data, flips req_tog, and stalls in S_XFER until the acknowledge comes
// back.  The payload is therefore held stable for the whole crossing and the
// design does not depend on any clock ratio.  18 bytes at boot, so the cost of
// the round trip does not matter.
// ---------------------------------------------------------------------------
reg        req_tog;                 // wb_clk domain
reg [7:0]  xfer_addr;               // wb_clk domain, stable across the handshake
reg [7:0]  xfer_data;
reg        xfer_last;               // this byte is the last of the read
reg        ack_s1, ack_s2;          // acknowledge, synchronised into wb_clk

reg        ack_tog;                 // reg_clk domain
reg        req_s1, req_s2, req_s3;  // request, synchronised into reg_clk

// Status is static by the time done_wb rises, so the register domain can latch
// it behind a plain two flop synchroniser on that one flag.
reg        done_wb;
reg        done_s1, done_s2;
reg        cfg_done_r;
reg [4:0]  st_r;                    // {committed, timeout, csum_ok, magic_ok, valid}
reg [7:0]  ver_r;

// Offset of the byte being received within the record, 0..31.  Bytes before this
// point are the repeated page the multi-page read always returns first.
wire [4:0] buf_idx = rx_cnt[4:0] - 5'd16;

// Does the record just read hold together?
wire rec_ok = magic0_ok && magic1_ok && (csum == {csum_hi, csum_lo});

assign cfg_done    = cfg_done_r;
assign cfg_valid   = st_r[0];
assign cfg_version = ver_r;
assign cfg_status  = {2'b00, st_r[4], st_r[3], st_r[2], st_r[1], cfg_done_r, st_r[0]};

always @(posedge wb_clk or negedge rstn) begin
    if (!rstn) begin
        state      <= S_BOOT;
        frame      <= 3'd0;
        pass       <= 1'b0;
        tx_idx     <= 5'd0;
        rx_cnt     <= 6'd0;
        delay_cnt  <= BOOT_DELAY;
        wdog       <= 0;

        csum       <= 16'd0;
        csum_lo    <= 8'h00;
        csum_hi    <= 8'h00;
        magic0_ok  <= 1'b0;
        magic1_ok  <= 1'b0;

        wb_cyc_o     <= 1'b0;
        wb_stb_o     <= 1'b0;
        wb_we_o      <= 1'b0;
        wb_adr_o     <= 8'h00;
        wb_dat_o   <= 8'h00;

        req_tog    <= 1'b0;
        xfer_addr  <= 8'h00;
        xfer_data  <= 8'h00;
        xfer_last  <= 1'b0;
        ack_s1     <= 1'b0;
        ack_s2     <= 1'b0;

        done_wb    <= 1'b0;
        valid_wb   <= 1'b0;
        ver_wb     <= 8'h00;
        magic_ok   <= 1'b0;
        csum_ok    <= 1'b0;
        committed  <= 1'b0;
        timeout    <= 1'b0;
    end else begin
        ack_s1 <= ack_tog;
        ack_s2 <= ack_s1;

        // Whole sequence watchdog.  A stalled EFB - no WISHBONE acknowledge, or a
        // status bit that never clears - must not leave the loader spinning
        // forever with cfg_done low.  Give up, flag it, and keep the defaults.
        if ((state != S_DONE) && (state != S_CHECK) && (wdog >= TIMEOUT)) begin
            wb_cyc_o  <= 1'b0;
            wb_stb_o  <= 1'b0;
            timeout <= 1'b1;
            state   <= S_CHECK;
        end else begin

        if (state != S_DONE)
            wdog <= wdog + 1;

        case (state)

        //------------------------------------------------------------------
        S_BOOT: begin
            if (delay_cnt == 0) state     <= S_OPEN;
            else                delay_cnt <= delay_cnt - 1;
        end

        //------------------------------------------------------------------
        // Open the frame, then wait until the hardened SSPI and I2C
        // configuration ports are idle before driving a command in.
        S_OPEN: begin
            wb_cyc_o   <= 1'b1;
            wb_stb_o   <= 1'b1;
            wb_we_o    <= 1'b1;
            wb_adr_o   <= CFGCR;
            wb_dat_o <= CR_WBCE;
            if (wb_ack) begin
                wb_cyc_o <= 1'b0;
                wb_stb_o <= 1'b0;
                tx_idx <= frame_first(frame);
                state  <= S_ACT_RD;
            end
        end

        S_ACT_RD: begin
            wb_cyc_o <= 1'b1;
            wb_stb_o <= 1'b1;
            wb_we_o  <= 1'b0;
            wb_adr_o <= CFGSR;
            if (wb_ack) begin
                wb_cyc_o <= 1'b0;
                wb_stb_o <= 1'b0;
                if ((wb_dat_r & (SR_SSPI | SR_I2C)) == 8'h00)
                    state <= S_TXF_RD;
            end
        end

        //------------------------------------------------------------------
        // Push the command bytes of the current frame through the transmit FIFO.
        S_TXF_RD: begin
            wb_cyc_o <= 1'b1;
            wb_stb_o <= 1'b1;
            wb_we_o  <= 1'b0;
            wb_adr_o <= CFGSR;
            if (wb_ack) begin
                wb_cyc_o <= 1'b0;
                wb_stb_o <= 1'b0;
                if ((wb_dat_r & SR_TXFF) == 8'h00)
                    state <= S_TX_WR;
            end
        end

        S_TX_WR: begin
            wb_cyc_o   <= 1'b1;
            wb_stb_o   <= 1'b1;
            wb_we_o    <= 1'b1;
            wb_adr_o   <= CFGTXDR;
            wb_dat_o <= seq_byte(tx_idx);
            if (wb_ack) begin
                wb_cyc_o <= 1'b0;
                wb_stb_o <= 1'b0;
                if (tx_idx == frame_last(frame)) begin
                    state <= S_TXE_RD;
                end else begin
                    tx_idx <= tx_idx + 1;
                    state  <= S_TXF_RD;
                end
            end
        end

        S_TXE_RD: begin
            wb_cyc_o <= 1'b1;
            wb_stb_o <= 1'b1;
            wb_we_o  <= 1'b0;
            wb_adr_o <= CFGSR;
            if (wb_ack) begin
                wb_cyc_o <= 1'b0;
                wb_stb_o <= 1'b0;
                if ((wb_dat_r & SR_TXFE) != 8'h00) begin
                    // Frame 2 is the UFM read - the data comes back inside the
                    // same frame, so receive before closing it.
                    if (frame == 3'd2) state <= S_RXE_RD;
                    else               state <= S_CLOSE;
                end
            end
        end

        //------------------------------------------------------------------
        // Drain RX_BYTES bytes.  The first 16 are the repeated page the
        // multi-page read always returns first, and are thrown away.
        S_RXE_RD: begin
            wb_cyc_o <= 1'b1;
            wb_stb_o <= 1'b1;
            wb_we_o  <= 1'b0;
            wb_adr_o <= CFGSR;
            if (wb_ack) begin
                wb_cyc_o <= 1'b0;
                wb_stb_o <= 1'b0;
                if ((wb_dat_r & SR_RXFE) == 8'h00)
                    state <= S_RX_RD;
            end
        end

        S_RX_RD: begin
            wb_cyc_o <= 1'b1;
            wb_stb_o <= 1'b1;
            wb_we_o  <= 1'b0;
            wb_adr_o <= CFGRXDR;
            if (wb_ack) begin
                wb_cyc_o <= 1'b0;
                wb_stb_o <= 1'b0;

                if (rx_cnt >= 6'd16) begin
                    // Both passes check the record.
                    if (buf_idx <= OFF_CSUM_HI)
                        csum <= csum + {8'h00, wb_dat_r};

                    if (buf_idx == 5'd0)  magic0_ok   <= (wb_dat_r == MAGIC0);
                    if (buf_idx == 5'd1)  magic1_ok   <= (wb_dat_r == MAGIC1);
                    if (buf_idx == 5'd2)  ver_wb      <= wb_dat_r;
                    if (buf_idx == 5'd30) csum_lo     <= wb_dat_r;
                    if (buf_idx == 5'd31) csum_hi     <= wb_dat_r;

                end

                // Only the second pass writes, and only the data bytes.  Park
                // the payload, flip the request, and wait for the register
                // domain to acknowledge before fetching the next byte.
                if (pass && (rx_cnt >= 6'd16) &&
                    (buf_idx >= OFF_DATA_LO) && (buf_idx <= OFF_DATA_HI)) begin
                    xfer_addr <= reg_addr(buf_idx);
                    xfer_data <= wb_dat_r;
                    req_tog   <= ~req_tog;
                    xfer_last <= (rx_cnt == (RX_BYTES - 1));
                    if (rx_cnt != (RX_BYTES - 1)) rx_cnt <= rx_cnt + 1;
                    state <= S_XFER;
                end else if (rx_cnt == (RX_BYTES - 1)) begin
                    state <= S_CLOSE;
                end else begin
                    rx_cnt <= rx_cnt + 1;
                    state  <= S_RXE_RD;
                end
            end
        end

        S_XFER: begin
            // Handshake closed when the acknowledge toggle matches the request.
            if (ack_s2 == req_tog) begin
                if (xfer_last) state <= S_CLOSE;
                else           state <= S_RXE_RD;
            end
        end

        //------------------------------------------------------------------
        S_CLOSE: begin
            wb_cyc_o   <= 1'b1;
            wb_stb_o   <= 1'b1;
            wb_we_o    <= 1'b1;
            wb_adr_o   <= CFGCR;
            wb_dat_o <= CR_CLOSE;
            if (wb_ack) begin
                wb_cyc_o <= 1'b0;
                wb_stb_o <= 1'b0;
                case (frame)

                3'd0: begin
                    // The configuration logic needs to settle after being enabled.
                    delay_cnt <= EN_DELAY;
                    frame     <= 3'd1;
                    state     <= S_DELAY;
                end

                3'd1: begin
                    // About to read: restart the record accumulators.
                    frame     <= 3'd2;
                    rx_cnt    <= 6'd0;
                    csum      <= 16'd0;
                    magic0_ok <= 1'b0;
                    magic1_ok <= 1'b0;
                    state     <= S_OPEN;
                end

                3'd2: begin
                    if (!pass && rec_ok) begin
                        // Checked out.  Rewind and read it again, writing this time.
                        pass      <= 1'b1;
                        committed <= 1'b1;
                        frame     <= 3'd1;
                    end else begin
                        frame <= 3'd3;
                    end
                    state <= S_OPEN;
                end

                3'd3: begin
                    // Configuration interface disabled; the bypass frame that
                    // wakes the hardened I2C and SPI ports back up still to go.
                    frame <= 3'd4;
                    state <= S_OPEN;
                end

                default: begin
                    state <= S_CHECK;
                end

                endcase
            end
        end

        S_DELAY: begin
            if (delay_cnt == 0) state     <= S_OPEN;
            else                delay_cnt <= delay_cnt - 1;
        end

        //------------------------------------------------------------------
        S_CHECK: begin
            magic_ok  <= magic0_ok && magic1_ok && !timeout;
            csum_ok   <= (csum == {csum_hi, csum_lo}) && !timeout;
            valid_wb  <= pass && rec_ok && !timeout;
            state     <= S_DONE;
        end

        S_DONE: begin
            wb_cyc_o <= 1'b0;
            wb_stb_o <= 1'b0;
            // Raised a cycle after S_CHECK settled the status, so the register
            // domain latches a value that is already stable.
            done_wb  <= 1'b1;
        end

        default: state <= S_DONE;

        endcase

        end // watchdog else
    end
end

//--------------------------------------------------------------------------------------------------
// Register file clock domain
//--------------------------------------------------------------------------------------------------
always @(posedge reg_clk or negedge rstn) begin
    if (!rstn) begin
        req_s1     <= 1'b0;
        req_s2     <= 1'b0;
        req_s3     <= 1'b0;
        ack_tog    <= 1'b0;
        cfg_we     <= 1'b0;
        cfg_addr   <= 8'h00;
        cfg_data   <= 8'h00;
        done_s1    <= 1'b0;
        done_s2    <= 1'b0;
        cfg_done_r <= 1'b0;
        st_r       <= 5'd0;
        ver_r      <= 8'h00;
    end else begin
        req_s1 <= req_tog;
        req_s2 <= req_s1;
        req_s3 <= req_s2;

        cfg_we <= 1'b0;
        if (req_s2 != req_s3) begin
            // xfer_addr/xfer_data have been parked since before the request
            // toggled and are held until this acknowledge gets back, so they
            // are stable to sample here.
            cfg_addr <= xfer_addr;
            cfg_data <= xfer_data;
            cfg_we   <= 1'b1;
            ack_tog  <= ~ack_tog;
        end

        done_s1 <= done_wb;
        done_s2 <= done_s1;
        if (done_s2) begin
            cfg_done_r <= 1'b1;
            st_r       <= {committed, timeout, csum_ok, magic_ok, valid_wb};
            ver_r      <= ver_wb;
        end
    end
end

endmodule
