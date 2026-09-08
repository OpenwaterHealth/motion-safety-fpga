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
//
///////////////////////////////////////////////////////////////////////////////////////////////////

module ufm_config #(
    parameter integer UFM_PAGE   = 0,        // first UFM page of the record
    parameter integer BOOT_DELAY = 25000,    // ~1 ms @ 25 MHz before touching the EFB, 16 bit
    parameter integer EN_DELAY   = 250,      // ~10 us @ 25 MHz, TN-02155 wants >= 5 us
    parameter integer TIMEOUT    = 2500000   // ~100 ms @ 25 MHz watchdog, 22 bit
)(
    input             clk,
    input             rstn,

    // Byte write port into registers.v, same shape as the I2C write path
    output reg        cfg_we,
    output reg [7:0]  cfg_addr,
    output reg [7:0]  cfg_data,

    output reg        cfg_done,              // load attempt finished, pass or fail
    output reg        cfg_valid,             // record checked out and was written
    output reg [7:0]  cfg_version,           // layout version byte from the record
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

            default : seq_byte = 8'h00;
        endcase
    end
endfunction

function [4:0] frame_first;
    input [1:0] f;
    begin
        case (f)
            2'd0 : frame_first = 5'd0;
            2'd1 : frame_first = 5'd4;
            2'd2 : frame_first = 5'd12;
            default : frame_first = 5'd16;
        endcase
    end
endfunction

function [4:0] frame_last;
    input [1:0] f;
    begin
        case (f)
            2'd0 : frame_last = 5'd3;
            2'd1 : frame_last = 5'd11;
            2'd2 : frame_last = 5'd15;
            default : frame_last = 5'd19;
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

//--------------------------------------------------------------------------------------------------
// EFB instance
//--------------------------------------------------------------------------------------------------
reg        wb_cyc;
reg        wb_stb;
reg        wb_we;
reg  [7:0] wb_adr;
reg  [7:0] wb_dat_w;
wire [7:0] wb_dat_r;
wire       wb_ack;
reg        wb_rst;

always @(posedge clk or negedge rstn)
    if (!rstn) wb_rst <= 1'b1;
    else       wb_rst <= 1'b0;

ufm_efb ufm_efb (
    .wb_clk_i     (clk),
    .wb_rst_i     (wb_rst),
    .wb_cyc_i     (wb_cyc),
    .wb_stb_i     (wb_stb),
    .wb_we_i      (wb_we),
    .wb_adr_i     (wb_adr),
    .wb_dat_i     (wb_dat_w),
    .wb_dat_o     (wb_dat_r),
    .wb_ack_o     (wb_ack),
    .wbc_ufm_irq  ()
);

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

reg [3:0]  state;
reg [1:0]  frame;
reg        pass;                    // 0 = check the record, 1 = write it out
reg [4:0]  tx_idx;
reg [5:0]  rx_cnt;
reg [15:0] delay_cnt;
reg [21:0] wdog;

reg [15:0] csum;                    // running sum of record bytes 0..29
reg [7:0]  csum_lo;                 // record byte 30
reg [7:0]  csum_hi;                 // record byte 31
reg        magic0_ok;
reg        magic1_ok;

reg        magic_ok;
reg        csum_ok;
reg        committed;
reg        timeout;

// Offset of the byte being received within the record, 0..31.  Bytes before this
// point are the repeated page the multi-page read always returns first.
wire [4:0] buf_idx = rx_cnt[4:0] - 5'd16;

// Does the record just read hold together?
wire rec_ok = magic0_ok && magic1_ok && (csum == {csum_hi, csum_lo});

assign cfg_status = {2'b00, committed, timeout, csum_ok, magic_ok, cfg_done, cfg_valid};

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        state      <= S_BOOT;
        frame      <= 2'd0;
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

        wb_cyc     <= 1'b0;
        wb_stb     <= 1'b0;
        wb_we      <= 1'b0;
        wb_adr     <= 8'h00;
        wb_dat_w   <= 8'h00;

        cfg_we     <= 1'b0;
        cfg_addr   <= 8'h00;
        cfg_data   <= 8'h00;

        cfg_done   <= 1'b0;
        cfg_valid  <= 1'b0;
        cfg_version<= 8'h00;
        magic_ok   <= 1'b0;
        csum_ok    <= 1'b0;
        committed  <= 1'b0;
        timeout    <= 1'b0;
    end else begin
        cfg_we <= 1'b0;

        // Whole sequence watchdog.  A stalled EFB - no WISHBONE acknowledge, or a
        // status bit that never clears - must not leave the loader spinning
        // forever with cfg_done low.  Give up, flag it, and keep the defaults.
        if ((state != S_DONE) && (state != S_CHECK) && (wdog >= TIMEOUT)) begin
            wb_cyc  <= 1'b0;
            wb_stb  <= 1'b0;
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
            wb_cyc   <= 1'b1;
            wb_stb   <= 1'b1;
            wb_we    <= 1'b1;
            wb_adr   <= CFGCR;
            wb_dat_w <= CR_WBCE;
            if (wb_ack) begin
                wb_cyc <= 1'b0;
                wb_stb <= 1'b0;
                tx_idx <= frame_first(frame);
                state  <= S_ACT_RD;
            end
        end

        S_ACT_RD: begin
            wb_cyc <= 1'b1;
            wb_stb <= 1'b1;
            wb_we  <= 1'b0;
            wb_adr <= CFGSR;
            if (wb_ack) begin
                wb_cyc <= 1'b0;
                wb_stb <= 1'b0;
                if ((wb_dat_r & (SR_SSPI | SR_I2C)) == 8'h00)
                    state <= S_TXF_RD;
            end
        end

        //------------------------------------------------------------------
        // Push the command bytes of the current frame through the transmit FIFO.
        S_TXF_RD: begin
            wb_cyc <= 1'b1;
            wb_stb <= 1'b1;
            wb_we  <= 1'b0;
            wb_adr <= CFGSR;
            if (wb_ack) begin
                wb_cyc <= 1'b0;
                wb_stb <= 1'b0;
                if ((wb_dat_r & SR_TXFF) == 8'h00)
                    state <= S_TX_WR;
            end
        end

        S_TX_WR: begin
            wb_cyc   <= 1'b1;
            wb_stb   <= 1'b1;
            wb_we    <= 1'b1;
            wb_adr   <= CFGTXDR;
            wb_dat_w <= seq_byte(tx_idx);
            if (wb_ack) begin
                wb_cyc <= 1'b0;
                wb_stb <= 1'b0;
                if (tx_idx == frame_last(frame)) begin
                    state <= S_TXE_RD;
                end else begin
                    tx_idx <= tx_idx + 1;
                    state  <= S_TXF_RD;
                end
            end
        end

        S_TXE_RD: begin
            wb_cyc <= 1'b1;
            wb_stb <= 1'b1;
            wb_we  <= 1'b0;
            wb_adr <= CFGSR;
            if (wb_ack) begin
                wb_cyc <= 1'b0;
                wb_stb <= 1'b0;
                if ((wb_dat_r & SR_TXFE) != 8'h00) begin
                    // Frame 2 is the UFM read - the data comes back inside the
                    // same frame, so receive before closing it.
                    if (frame == 2'd2) state <= S_RXE_RD;
                    else               state <= S_CLOSE;
                end
            end
        end

        //------------------------------------------------------------------
        // Drain RX_BYTES bytes.  The first 16 are the repeated page the
        // multi-page read always returns first, and are thrown away.
        S_RXE_RD: begin
            wb_cyc <= 1'b1;
            wb_stb <= 1'b1;
            wb_we  <= 1'b0;
            wb_adr <= CFGSR;
            if (wb_ack) begin
                wb_cyc <= 1'b0;
                wb_stb <= 1'b0;
                if ((wb_dat_r & SR_RXFE) == 8'h00)
                    state <= S_RX_RD;
            end
        end

        S_RX_RD: begin
            wb_cyc <= 1'b1;
            wb_stb <= 1'b1;
            wb_we  <= 1'b0;
            wb_adr <= CFGRXDR;
            if (wb_ack) begin
                wb_cyc <= 1'b0;
                wb_stb <= 1'b0;

                if (rx_cnt >= 6'd16) begin
                    // Both passes check the record.
                    if (buf_idx <= OFF_CSUM_HI)
                        csum <= csum + {8'h00, wb_dat_r};

                    if (buf_idx == 5'd0)  magic0_ok   <= (wb_dat_r == MAGIC0);
                    if (buf_idx == 5'd1)  magic1_ok   <= (wb_dat_r == MAGIC1);
                    if (buf_idx == 5'd2)  cfg_version <= wb_dat_r;
                    if (buf_idx == 5'd30) csum_lo     <= wb_dat_r;
                    if (buf_idx == 5'd31) csum_hi     <= wb_dat_r;

                    // Only the second pass writes, and only the data bytes.
                    if (pass && (buf_idx >= OFF_DATA_LO) && (buf_idx <= OFF_DATA_HI)) begin
                        cfg_we   <= 1'b1;
                        cfg_addr <= reg_addr(buf_idx);
                        cfg_data <= wb_dat_r;
                    end
                end

                if (rx_cnt == (RX_BYTES - 1)) begin
                    state <= S_CLOSE;
                end else begin
                    rx_cnt <= rx_cnt + 1;
                    state  <= S_RXE_RD;
                end
            end
        end

        //------------------------------------------------------------------
        S_CLOSE: begin
            wb_cyc   <= 1'b1;
            wb_stb   <= 1'b1;
            wb_we    <= 1'b1;
            wb_adr   <= CFGCR;
            wb_dat_w <= CR_CLOSE;
            if (wb_ack) begin
                wb_cyc <= 1'b0;
                wb_stb <= 1'b0;
                case (frame)

                2'd0: begin
                    // The configuration logic needs to settle after being enabled.
                    delay_cnt <= EN_DELAY;
                    frame     <= 2'd1;
                    state     <= S_DELAY;
                end

                2'd1: begin
                    // About to read: restart the record accumulators.
                    frame     <= 2'd2;
                    rx_cnt    <= 6'd0;
                    csum      <= 16'd0;
                    magic0_ok <= 1'b0;
                    magic1_ok <= 1'b0;
                    state     <= S_OPEN;
                end

                2'd2: begin
                    if (!pass && rec_ok) begin
                        // Checked out.  Rewind and read it again, writing this time.
                        pass      <= 1'b1;
                        committed <= 1'b1;
                        frame     <= 2'd1;
                    end else begin
                        frame <= 2'd3;
                    end
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
            cfg_valid <= pass && rec_ok && !timeout;
            cfg_done  <= 1'b1;
            state     <= S_DONE;
        end

        S_DONE: begin
            wb_cyc <= 1'b0;
            wb_stb <= 1'b0;
        end

        default: state <= S_DONE;

        endcase

        end // watchdog else
    end
end

endmodule
