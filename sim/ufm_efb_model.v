`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////////////////////////
// File: sim/ufm_efb_model.v
//
// Simulation stand-in for efb_i2c.v, the SCUBA generated EFB wrapper.  It
// models only what ufm_config.v uses: the WISHBONE configuration port registers
// CFGCR/CFGTXDR/CFGSR/CFGRXDR and the subset of the sysCONFIG command set needed
// to read UFM pages.  Behaviour follows FPGA-TN-02155 tables 9.3 and 9.6,
// including the quirk that a multi-page read repeats the page under the address
// pointer, so a count of N returns P(n), P(n), P(n+1) ... N pages in total.
//
// Not for synthesis.  The real design binds efb_i2c.v, which is the same EFB
// the hardened I2C configuration port lives on.
///////////////////////////////////////////////////////////////////////////////////////////////////

module efb_i2c_model #(
    parameter integer CASE_ID = 0,   // which UFM image to present, see initial block
    parameter MEM_FILE = ""          // CASE_ID 4 only: a Diamond .mem to load
)(
    input        wb_clk_i,
    input        wb_rst_i,
    input        wb_cyc_i,
    input        wb_stb_i,
    input        wb_we_i,
    input  [7:0] wb_adr_i,
    input  [7:0] wb_dat_i,
    output reg [7:0] wb_dat_o,
    output reg   wb_ack_o,
    output       wbc_ufm_irq
);

assign wbc_ufm_irq = 1'b0;

localparam UFM_PAGES = 64;                       // enough of the sector for the test
reg [7:0] ufm [0:UFM_PAGES*16-1];

// ---------------------------------------------------------------------------
// UFM image
// ---------------------------------------------------------------------------
integer k;
reg [15:0] sum;

task put32; input integer off; input [31:0] v; begin
    ufm[off+0] = v[7:0];  ufm[off+1] = v[15:8];
    ufm[off+2] = v[23:16]; ufm[off+3] = v[31:24];
end endtask

task put16; input integer off; input [15:0] v; begin
    ufm[off+0] = v[7:0];  ufm[off+1] = v[15:8];
end endtask

reg [127:0] mem_row [0:1];
integer r, bidx;

initial begin
    // Erased Flash reads back all ones.
    for (k = 0; k < UFM_PAGES*16; k = k + 1)
        ufm[k] = 8'hFF;

    if (CASE_ID == 4) begin
        // Load the record straight from the file tools/make_ufm_record.py emits,
        // so a layout or byte order change on either side shows up as a failure.
        // Diamond writes a .mem row most significant byte first: the leftmost
        // byte of the row is byte 15 of the page, the rightmost is byte 0.
        $readmemh(MEM_FILE, mem_row);
        for (r = 0; r < 2; r = r + 1)
            for (bidx = 0; bidx < 16; bidx = bidx + 1)
                ufm[r*16 + bidx] = mem_row[r][8*bidx +: 8];
    end else if (CASE_ID != 1) begin             // case 1 stays blank
        for (k = 0; k < 32; k = k + 1) ufm[k] = 8'h00;
        ufm[0] = 8'h4F;                          // 'O'
        ufm[1] = 8'h57;                          // 'W'
        ufm[2] = 8'h01;                          // layout version
        ufm[3] = 8'h00;
        put32(4,  32'h00000123);                 // pulse_width_lower_limit
        put32(8,  32'h000003C0);                 // pulse_width_upper_limit
        put32(12, 32'h000112A9);                 // rate_lower_limit
        put16(16, 16'h0B40);                     // drive_current_limit
        put16(18, 16'h0400);                     // pwm_current_limit
        put16(20, 16'h0380);                     // cw_current_limit

        sum = 16'h0000;
        for (k = 0; k < 30; k = k + 1) sum = sum + ufm[k];
        if (CASE_ID == 2) sum = sum + 16'h0001;  // case 2 corrupts the checksum
        put16(30, sum);
    end
end

// ---------------------------------------------------------------------------
// Configuration engine
// ---------------------------------------------------------------------------
localparam [7:0] CFGCR = 8'h70, CFGTXDR = 8'h71, CFGSR = 8'h72, CFGRXDR = 8'h73;

reg        frame_open;
reg        cfg_enabled;
reg        saw_bypass;
reg [13:0] page_ptr;

reg  [7:0] cmd [0:7];
integer    cmd_n;

// Receive FIFO
reg  [7:0] rxfifo [0:1023];
integer    rx_wr, rx_rd;

wire rx_empty = (rx_rd == rx_wr);

integer pages, p, b, first;

// Decode whatever has accumulated in the command buffer.  Every command here is
// a 4 byte opcode, optionally followed by a fixed length data field.
task decode;
    begin
        case (cmd[0])
        8'h74: if (cmd_n == 4) begin                          // ISC_ENABLE_X
                   if (cmd[1] !== 8'h08)
                       $display("EFB MODEL: ISC_ENABLE_X operand %02h, expected 08", cmd[1]);
                   cfg_enabled = 1'b1;
                   cmd_n = 0;
               end
        8'hB4: if (cmd_n == 8) begin                          // LSC_WRITE_ADDRESS
                   if (cmd[4] !== 8'h40)
                       $display("EFB MODEL: address M field %02h, expected 40 (UFM)", cmd[4]);
                   page_ptr = {cmd[6][5:0], cmd[7]};
                   cmd_n = 0;
               end
        8'hCA: if (cmd_n == 4) begin                          // LSC_READ_UFM
                   if (cmd[1] !== 8'h10)
                       $display("EFB MODEL: read M field %02h, expected 10 (WISHBONE)", cmd[1]);
                   pages = {cmd[2], cmd[3]};
                   // The page under the pointer comes back twice.
                   for (p = 0; p < pages; p = p + 1) begin
                       first = (p == 0) ? 0 : (p - 1);
                       for (b = 0; b < 16; b = b + 1) begin
                           rxfifo[rx_wr] = ufm[(page_ptr + first)*16 + b];
                           rx_wr = rx_wr + 1;
                       end
                   end
                   cmd_n = 0;
               end
        8'h26: if (cmd_n == 4) begin                          // ISC_DISABLE
                   cfg_enabled = 1'b0;
                   cmd_n = 0;
               end
        8'hFF: if (cmd_n == 4) begin                          // ISC_NOOP / BYPASS
                   // Restores the hardened I2C and SPI ports after the config
                   // interface has been disabled.
                   saw_bypass = 1'b1;
                   cmd_n = 0;
               end
        default: if (cmd_n == 4) begin
                   $display("EFB MODEL: unexpected opcode %02h", cmd[0]);
                   cmd_n = 0;
               end
        endcase
    end
endtask

always @(posedge wb_clk_i or posedge wb_rst_i) begin
    if (wb_rst_i) begin
        wb_ack_o    <= 1'b0;
        wb_dat_o    <= 8'h00;
        frame_open   = 1'b0;
        cfg_enabled  = 1'b0;
        saw_bypass   = 1'b0;
        page_ptr     = 14'd0;
        cmd_n        = 0;
        rx_wr        = 0;
        rx_rd        = 0;
    end else begin
        wb_ack_o <= 1'b0;
        if (wb_cyc_i && wb_stb_i && !wb_ack_o) begin
            wb_ack_o <= 1'b1;
            if (wb_we_i) begin
                case (wb_adr_i)
                CFGCR: begin
                    frame_open = wb_dat_i[7];
                    if (!frame_open) cmd_n = 0;             // closing terminates the command
                end
                CFGTXDR: begin
                    if (!frame_open)
                        $display("EFB MODEL: transmit with the frame closed");
                    cmd[cmd_n] = wb_dat_i;
                    cmd_n = cmd_n + 1;
                    decode;
                end
                default: $display("EFB MODEL: write to unmodelled register %02h", wb_adr_i);
                endcase
            end else begin
                case (wb_adr_i)
                CFGSR: wb_dat_o <= {frame_open,          // WBCACT
                                    1'b0,
                                    1'b1,                // TXFE, the model never backs up
                                    1'b0,                // TXFF
                                    rx_empty,            // RXFE
                                    1'b0,                // RXFF
                                    1'b0,                // SSPIACT
                                    1'b0};               // I2CACT
                CFGRXDR: begin
                    if (rx_empty) begin
                        $display("EFB MODEL: receive underrun");
                        wb_dat_o <= 8'h00;
                    end else begin
                        wb_dat_o <= rxfifo[rx_rd];
                        rx_rd = rx_rd + 1;
                    end
                end
                default: wb_dat_o <= 8'h00;
                endcase
            end
        end
    end
end

endmodule
