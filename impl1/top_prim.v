// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Apr 16 13:54:27 2025
//
// Verilog Description of module top
//

module top (rstn, system_reset_n, clk_50mhz, laser_pulse, pwr_good, 
            laser_pwr_en1_n, watchdog_timeout_led_n, calibrated_led_n, 
            peak_error_led_n, pulse_error_led_n, rate_error_led_n, test_pass_led_n, 
            test_fail_led_n, TA_shutdown, adc_sdo, adc_sck, adc_convert, 
            scl, sda, temp_scl, temp_sda, prom_scl, prom_sda, heartbeat_n, 
            spare1, spare2, spare3, spare4, gpio1, gpio2, gpio3, 
            gpio4) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(3[8:11])
    input rstn;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(4[15:19])
    input system_reset_n;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(5[15:29])
    input clk_50mhz;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(7[15:24])
    input laser_pulse;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(8[12:23])
    input pwr_good;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(9[12:20])
    output laser_pwr_en1_n;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(11[12:27])
    output watchdog_timeout_led_n;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(12[12:34])
    output calibrated_led_n;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(13[12:28])
    output peak_error_led_n;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(14[12:28])
    output pulse_error_led_n;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(15[12:29])
    output rate_error_led_n;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(16[12:28])
    output test_pass_led_n;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(18[12:27])
    output test_fail_led_n;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(19[12:27])
    output TA_shutdown;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(20[12:23])
    input adc_sdo;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(22[12:19])
    output adc_sck;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(23[12:19])
    output adc_convert;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(24[12:23])
    inout scl;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(26[15:18])
    inout sda;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(27[15:18])
    output temp_scl /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(28[15:23])
    output temp_sda /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(29[15:23])
    output prom_scl /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(31[15:23])
    output prom_sda /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(32[15:23])
    output heartbeat_n;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(34[15:26])
    output spare1 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(36[12:18])
    output spare2 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(37[12:18])
    output spare3 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(38[12:18])
    output spare4 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(39[12:18])
    output gpio1 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(41[12:17])
    output gpio2 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(42[12:17])
    output gpio3 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(43[12:17])
    output gpio4 /* synthesis .original_dir=IN_OUT */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(44[12:17])
    
    wire clk_50mhz_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_50mhz_c */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(7[15:24])
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    wire clk_div2_N_18 /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/clock_generator.v(25[16:24])
    
    wire GND_net, rstn_c, system_reset_n_c_2, laser_pulse_c, pwr_good_c_1, 
        laser_pwr_en1_n_c, watchdog_timeout_led_n_c, calibrated_led_n_c, 
        peak_error_led_n_c, pulse_error_led_n_c, rate_error_led_n_c, test_pass_led_n_c, 
        test_fail_led_n_c, TA_shutdown_c, spare3_c_c, spare1_c, spare2_c, 
        heartbeat_n_c_7;
    wire [31:0]pulse_width_lower_limit;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(56[13:36])
    wire [31:0]pulse_width_upper_limit;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(57[13:36])
    wire [31:0]rate_lower_limit;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(58[13:29])
    wire [31:0]rate_upper_limit;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(59[13:29])
    
    wire pulse_lower_limit_fail, pulse_upper_limit_fail, rate_lower_limit_fail, 
        rate_upper_limit_fail;
    wire [15:0]static_control;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(74[13:27])
    wire [15:0]dynamic_control;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(75[13:28])
    
    wire reset_n, VCC_net, rstn_N_14, scl_out, n4, n11577, stop_detect_i, 
        reset_bus_i, n13407, d_ff, start_detect_i_N_352;
    wire [3:0]next_state_i_3__N_181;
    
    wire sda_out, count_i_3__N_145, n13409, n17327, n13408, n17326, 
        n16518, n16408, n16517;
    
    VHI i17 (.Z(VCC_net));
    OB laser_pwr_en1_n_pad (.I(laser_pwr_en1_n_c), .O(laser_pwr_en1_n));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(11[12:27])
    BB sda_pad (.I(GND_net), .T(n11577), .B(sda), .O(sda_out));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller_top.v(151[8:11])
    BB scl_pad (.I(GND_net), .T(VCC_net), .B(scl), .O(scl_out));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller_top.v(149[8:11])
    OB watchdog_timeout_led_n_pad (.I(watchdog_timeout_led_n_c), .O(watchdog_timeout_led_n));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(12[12:34])
    OB calibrated_led_n_pad (.I(calibrated_led_n_c), .O(calibrated_led_n));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(13[12:28])
    OB peak_error_led_n_pad (.I(peak_error_led_n_c), .O(peak_error_led_n));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(14[12:28])
    OB pulse_error_led_n_pad (.I(pulse_error_led_n_c), .O(pulse_error_led_n));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(15[12:29])
    OB rate_error_led_n_pad (.I(rate_error_led_n_c), .O(rate_error_led_n));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(16[12:28])
    OB test_pass_led_n_pad (.I(test_pass_led_n_c), .O(test_pass_led_n));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(18[12:27])
    OB test_fail_led_n_pad (.I(test_fail_led_n_c), .O(test_fail_led_n));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(19[12:27])
    OB TA_shutdown_pad (.I(TA_shutdown_c), .O(TA_shutdown));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(20[12:23])
    OB adc_sck_pad (.I(spare1_c), .O(adc_sck));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(23[12:19])
    OB adc_convert_pad (.I(spare2_c), .O(adc_convert));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(24[12:23])
    OB temp_scl_pad (.I(GND_net), .O(temp_scl));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(28[15:23])
    OB temp_sda_pad (.I(GND_net), .O(temp_sda));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(29[15:23])
    OB prom_scl_pad (.I(GND_net), .O(prom_scl));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(31[15:23])
    OB prom_sda_pad (.I(GND_net), .O(prom_sda));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(32[15:23])
    OB heartbeat_n_pad (.I(heartbeat_n_c_7), .O(heartbeat_n));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(34[15:26])
    OB spare1_pad (.I(spare1_c), .O(spare1));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(36[12:18])
    OB spare2_pad (.I(spare2_c), .O(spare2));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(37[12:18])
    OB spare3_pad (.I(spare3_c_c), .O(spare3));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(38[12:18])
    OB spare4_pad (.I(GND_net), .O(spare4));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(39[12:18])
    OB gpio1_pad (.I(GND_net), .O(gpio1));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(41[12:17])
    OB gpio2_pad (.I(GND_net), .O(gpio2));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(42[12:17])
    OB gpio3_pad (.I(GND_net), .O(gpio3));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(43[12:17])
    OB gpio4_pad (.I(GND_net), .O(gpio4));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(44[12:17])
    IB rstn_pad (.I(rstn), .O(rstn_c));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(4[15:19])
    IB system_reset_n_pad (.I(system_reset_n), .O(system_reset_n_c_2));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(5[15:29])
    IB clk_50mhz_pad (.I(clk_50mhz), .O(clk_50mhz_c));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(7[15:24])
    IB laser_pulse_pad (.I(laser_pulse), .O(laser_pulse_c));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(8[12:23])
    IB pwr_good_pad (.I(pwr_good), .O(pwr_good_c_1));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(9[12:20])
    IB spare3_c_pad (.I(adc_sdo), .O(spare3_c_c));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(22[12:19])
    GSR GSR_INST (.GSR(reset_n));
    LUT4 static_control_2__I_0_1_lut (.A(static_control[2]), .Z(laser_pwr_en1_n_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(84[31:49])
    defparam static_control_2__I_0_1_lut.init = 16'h5555;
    LUT4 static_control_7__I_0_1_lut (.A(static_control[7]), .Z(watchdog_timeout_led_n_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(89[33:51])
    defparam static_control_7__I_0_1_lut.init = 16'h5555;
    LUT4 static_control_3__I_0_1_lut (.A(static_control[3]), .Z(calibrated_led_n_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(85[31:49])
    defparam static_control_3__I_0_1_lut.init = 16'h5555;
    LUT4 static_control_4__I_0_1_lut (.A(static_control[4]), .Z(peak_error_led_n_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(86[31:49])
    defparam static_control_4__I_0_1_lut.init = 16'h5555;
    LUT4 static_control_5__I_0_1_lut (.A(static_control[5]), .Z(pulse_error_led_n_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(87[31:49])
    defparam static_control_5__I_0_1_lut.init = 16'h5555;
    LUT4 static_control_6__I_0_1_lut (.A(static_control[6]), .Z(rate_error_led_n_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(88[31:49])
    defparam static_control_6__I_0_1_lut.init = 16'h5555;
    LUT4 static_control_8__I_0_1_lut (.A(static_control[8]), .Z(test_pass_led_n_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(90[31:49])
    defparam static_control_8__I_0_1_lut.init = 16'h5555;
    LUT4 static_control_9__I_0_1_lut (.A(static_control[9]), .Z(test_fail_led_n_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(91[31:49])
    defparam static_control_9__I_0_1_lut.init = 16'h5555;
    clock_generator clock_generator (.clk_div2(clk_div2), .clk_50mhz_c(clk_50mhz_c), 
            .rstn_N_14(rstn_N_14), .clk_div2_N_18(clk_div2_N_18), .rstn_c(rstn_c)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(126[17] 130[2])
    LUT4 m1_lut (.Z(n17327)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 m0_lut (.Z(n17326)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    adc_control adc_control (.clk_div2(clk_div2), .spare2_c(spare2_c), .n17327(n17327), 
            .GND_net(GND_net), .spare1_c(spare1_c)) /* synthesis syn_preserve=1, syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(198[13] 209[2])
    i2c_slave_top i2c_slave_top (.pulse_width_upper_limit({pulse_width_upper_limit}), 
            .clk_div2(clk_div2), .rate_lower_limit({rate_lower_limit}), 
            .rate_upper_limit({rate_upper_limit}), .clk_div2_N_18(clk_div2_N_18), 
            .GND_net(GND_net), .n16408(n16408), .n17327(n17327), .pulse_width_lower_limit({pulse_width_lower_limit}), 
            .n17326(n17326), .\static_control[6] (static_control[6]), .\static_control[5] (static_control[5]), 
            .\static_control[4] (static_control[4]), .\static_control[3] (static_control[3]), 
            .\static_control[8] (static_control[8]), .\static_control[2] (static_control[2]), 
            .\static_control[7] (static_control[7]), .\static_control[9] (static_control[9]), 
            .system_reset_n_c_2(system_reset_n_c_2), .pwr_good_c_1(pwr_good_c_1), 
            .\dynamic_control[0] (dynamic_control[0]), .n16518(n16518), 
            .\next_state_i_3__N_181[0] (next_state_i_3__N_181[0]), .stop_detect_i(stop_detect_i), 
            .start_detect_i_N_352(start_detect_i_N_352), .d_ff(d_ff), .n16517(n16517), 
            .reset_n(reset_n), .reset_bus_i(reset_bus_i), .count_i_3__N_145(count_i_3__N_145), 
            .n13409(n13409), .n11577(n11577), .n4(n4), .n13407(n13407), 
            .n13408(n13408), .sda_out(sda_out), .scl_out(scl_out)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(138[15] 161[2])
    reset_generator reset_generator (.rstn_N_14(rstn_N_14), .clk_50mhz_c(clk_50mhz_c), 
            .reset_n(reset_n), .reset_bus_i(reset_bus_i), .start_detect_i_N_352(start_detect_i_N_352), 
            .n13407(n13407), .n13408(n13408), .count_i_3__N_145(count_i_3__N_145), 
            .n13409(n13409), .stop_detect_i(stop_detect_i), .d_ff(d_ff), 
            .n16517(n16517), .n16518(n16518), .n16408(n16408), .rstn_c(rstn_c), 
            .\next_state_i_3__N_181[0] (next_state_i_3__N_181[0]), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(120[17] 124[2])
    limit_check limit_check (.GND_net(GND_net), .clk_div2(clk_div2), .laser_pulse_c(laser_pulse_c), 
            .pulse_lower_limit_fail(pulse_lower_limit_fail), .pulse_upper_limit_fail(pulse_upper_limit_fail), 
            .rate_lower_limit_fail(rate_lower_limit_fail), .rate_upper_limit_fail(rate_upper_limit_fail), 
            .pulse_width_lower_limit({pulse_width_lower_limit}), .rate_upper_limit({rate_upper_limit}), 
            .pulse_width_upper_limit({pulse_width_upper_limit}), .rate_lower_limit({rate_lower_limit}), 
            .\dynamic_control[0] (dynamic_control[0]), .TA_shutdown_c(TA_shutdown_c)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(163[13] 195[2])
    LUT4 i3_4_lut (.A(pulse_lower_limit_fail), .B(rate_upper_limit_fail), 
         .C(rate_lower_limit_fail), .D(pulse_upper_limit_fail), .Z(TA_shutdown_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(95[23:94])
    defparam i3_4_lut.init = 16'hfffe;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    heart_beat heart_beat (.GND_net(GND_net), .clk_div2(clk_div2), .heartbeat_n_c_7(heartbeat_n_c_7)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(132[12] 136[2])
    
endmodule
//
// Verilog Description of module clock_generator
//

module clock_generator (clk_div2, clk_50mhz_c, rstn_N_14, clk_div2_N_18, 
            rstn_c) /* synthesis syn_module_defined=1 */ ;
    output clk_div2;
    input clk_50mhz_c;
    output rstn_N_14;
    output clk_div2_N_18;
    input rstn_c;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    wire clk_50mhz_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_50mhz_c */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(7[15:24])
    wire clk_div2_N_18 /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/clock_generator.v(25[16:24])
    
    FD1S3DX clk_div2_8 (.D(clk_div2_N_18), .CK(clk_50mhz_c), .CD(rstn_N_14), 
            .Q(clk_div2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=126, LSE_RLINE=130 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/clock_generator.v(31[16] 33[10])
    defparam clk_div2_8.GSR = "DISABLED";
    LUT4 rstn_I_0_1_lut (.A(rstn_c), .Z(rstn_N_14)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/reset_generator.v(75[10:15])
    defparam rstn_I_0_1_lut.init = 16'h5555;
    INV i13815 (.A(clk_div2), .Z(clk_div2_N_18));
    
endmodule
//
// Verilog Description of module adc_control
//

module adc_control (clk_div2, spare2_c, n17327, GND_net, spare1_c) /* synthesis syn_preserve=1, syn_module_defined=1 */ ;
    input clk_div2;
    output spare2_c;
    input n17327;
    input GND_net;
    output spare1_c;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    wire adc_sck_temp /* synthesis is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(53[5:17])
    wire [7:0]convert_count;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(45[11:24])
    
    wire clk_div2_enable_258, n6035;
    wire [7:0]n37;
    
    wire clk_div2_enable_3, n16528;
    wire [3:0]state;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(44[11:16])
    wire [3:0]state_3__N_1505;
    wire [3:0]sck_count;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(50[11:20])
    
    wire clk_div2_enable_255, n6032;
    wire [3:0]n21;
    
    wire clk_div2_enable_5, data_ready_N_1632, n16561, clk_div2_enable_26, 
        clk_div2_enable_27, clk_div2_enable_28;
    wire [3:0]n1083;
    
    wire n13143, n13142, n13141, n13140, n17325, data_ready, clk_div2_enable_257;
    wire [0:0]n1033;
    
    wire adc_convert_N_1625, n8, n6, n16560, n16462;
    
    FD1P3IX convert_count_922__i2 (.D(n37[2]), .SP(clk_div2_enable_258), 
            .CD(n6035), .CK(clk_div2), .Q(convert_count[2])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922__i2.GSR = "ENABLED";
    FD1P3IX convert_count_922__i1 (.D(n37[1]), .SP(clk_div2_enable_258), 
            .CD(n6035), .CK(clk_div2), .Q(convert_count[1])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922__i1.GSR = "ENABLED";
    FD1P3AX adc_sck_temp_84 (.D(n16528), .SP(clk_div2_enable_3), .CK(clk_div2), 
            .Q(adc_sck_temp)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=198, LSE_RLINE=209 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(69[14] 100[12])
    defparam adc_sck_temp_84.GSR = "ENABLED";
    FD1S3AX state_i0 (.D(state_3__N_1505[0]), .CK(clk_div2), .Q(state[0])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=198, LSE_RLINE=209 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(69[14] 100[12])
    defparam state_i0.GSR = "ENABLED";
    FD1P3IX sck_count_921__i3 (.D(n21[3]), .SP(clk_div2_enable_255), .CD(n6032), 
            .CK(clk_div2), .Q(sck_count[3])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(95[62:75])
    defparam sck_count_921__i3.GSR = "ENABLED";
    FD1P3AX adc_convert_81 (.D(n16528), .SP(clk_div2_enable_5), .CK(clk_div2), 
            .Q(spare2_c)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=198, LSE_RLINE=209 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(69[14] 100[12])
    defparam adc_convert_81.GSR = "ENABLED";
    FD1P3IX sck_count_921__i2 (.D(n21[2]), .SP(clk_div2_enable_255), .CD(n6032), 
            .CK(clk_div2), .Q(sck_count[2])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(95[62:75])
    defparam sck_count_921__i2.GSR = "ENABLED";
    FD1P3IX sck_count_921__i1 (.D(n21[1]), .SP(clk_div2_enable_255), .CD(n6032), 
            .CK(clk_div2), .Q(sck_count[1])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(95[62:75])
    defparam sck_count_921__i1.GSR = "ENABLED";
    FD1P3IX convert_count_922__i7 (.D(n37[7]), .SP(clk_div2_enable_258), 
            .CD(n6035), .CK(clk_div2), .Q(convert_count[7])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922__i7.GSR = "ENABLED";
    FD1P3IX convert_count_922__i6 (.D(n37[6]), .SP(clk_div2_enable_258), 
            .CD(n6035), .CK(clk_div2), .Q(convert_count[6])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922__i6.GSR = "ENABLED";
    FD1P3IX convert_count_922__i5 (.D(n37[5]), .SP(clk_div2_enable_258), 
            .CD(n6035), .CK(clk_div2), .Q(convert_count[5])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922__i5.GSR = "ENABLED";
    FD1P3IX convert_count_922__i4 (.D(n37[4]), .SP(clk_div2_enable_258), 
            .CD(n6035), .CK(clk_div2), .Q(convert_count[4])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922__i4.GSR = "ENABLED";
    LUT4 i13253_3_lut_4_lut_then_3_lut_4_lut (.A(state[2]), .B(state[3]), 
         .C(data_ready_N_1632), .D(state[0]), .Z(n16561)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(88[24:31])
    defparam i13253_3_lut_4_lut_then_3_lut_4_lut.init = 16'h1000;
    FD1P3AX state_i3 (.D(n17327), .SP(clk_div2_enable_26), .CK(clk_div2), 
            .Q(state[3])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=198, LSE_RLINE=209 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(69[14] 100[12])
    defparam state_i3.GSR = "ENABLED";
    FD1P3AX state_i2 (.D(n17327), .SP(clk_div2_enable_27), .CK(clk_div2), 
            .Q(state[2])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=198, LSE_RLINE=209 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(69[14] 100[12])
    defparam state_i2.GSR = "ENABLED";
    FD1P3AX state_i1 (.D(n1083[1]), .SP(clk_div2_enable_28), .CK(clk_div2), 
            .Q(state[1])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=198, LSE_RLINE=209 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(69[14] 100[12])
    defparam state_i1.GSR = "ENABLED";
    CCU2D convert_count_922_add_4_9 (.A0(convert_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13143), .S0(n37[7]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922_add_4_9.INIT0 = 16'hfaaa;
    defparam convert_count_922_add_4_9.INIT1 = 16'h0000;
    defparam convert_count_922_add_4_9.INJECT1_0 = "NO";
    defparam convert_count_922_add_4_9.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(sck_count[3]), .B(sck_count[2]), .C(sck_count[0]), 
         .D(sck_count[1]), .Z(data_ready_N_1632)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    LUT4 mux_449_Mux_1_i3_3_lut_3_lut (.A(data_ready_N_1632), .B(state[0]), 
         .C(state[1]), .Z(n1083[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam mux_449_Mux_1_i3_3_lut_3_lut.init = 16'h7c7c;
    CCU2D convert_count_922_add_4_7 (.A0(convert_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(convert_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13142), .COUT(n13143), .S0(n37[5]), 
          .S1(n37[6]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922_add_4_7.INIT0 = 16'hfaaa;
    defparam convert_count_922_add_4_7.INIT1 = 16'hfaaa;
    defparam convert_count_922_add_4_7.INJECT1_0 = "NO";
    defparam convert_count_922_add_4_7.INJECT1_1 = "NO";
    LUT4 i1374_2_lut_3_lut (.A(state[2]), .B(state[3]), .C(state[1]), 
         .Z(clk_div2_enable_3)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(88[24:31])
    defparam i1374_2_lut_3_lut.init = 16'h1010;
    CCU2D convert_count_922_add_4_5 (.A0(convert_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(convert_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13141), .COUT(n13142), .S0(n37[3]), 
          .S1(n37[4]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922_add_4_5.INIT0 = 16'hfaaa;
    defparam convert_count_922_add_4_5.INIT1 = 16'hfaaa;
    defparam convert_count_922_add_4_5.INJECT1_0 = "NO";
    defparam convert_count_922_add_4_5.INJECT1_1 = "NO";
    LUT4 i13274_3_lut_rep_358_4_lut (.A(state[2]), .B(state[3]), .C(state[1]), 
         .D(state[0]), .Z(clk_div2_enable_255)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(88[24:31])
    defparam i13274_3_lut_rep_358_4_lut.init = 16'h1000;
    LUT4 i13277_2_lut_rep_327_2_lut_3_lut_4_lut (.A(state[2]), .B(state[3]), 
         .C(state[0]), .D(state[1]), .Z(clk_div2_enable_258)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(88[24:31])
    defparam i13277_2_lut_rep_327_2_lut_3_lut_4_lut.init = 16'h0010;
    CCU2D convert_count_922_add_4_3 (.A0(convert_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(convert_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13140), .COUT(n13141), .S0(n37[1]), 
          .S1(n37[2]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922_add_4_3.INIT0 = 16'hfaaa;
    defparam convert_count_922_add_4_3.INIT1 = 16'hfaaa;
    defparam convert_count_922_add_4_3.INJECT1_0 = "NO";
    defparam convert_count_922_add_4_3.INJECT1_1 = "NO";
    FD1P3IX convert_count_922__i0 (.D(n37[0]), .SP(clk_div2_enable_258), 
            .CD(n6035), .CK(clk_div2), .Q(convert_count[0])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922__i0.GSR = "ENABLED";
    FD1P3IX sck_count_921__i0 (.D(n21[0]), .SP(clk_div2_enable_255), .CD(n6032), 
            .CK(clk_div2), .Q(sck_count[0])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(95[62:75])
    defparam sck_count_921__i0.GSR = "ENABLED";
    CCU2D convert_count_922_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(convert_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n13140), .S1(n37[0]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922_add_4_1.INIT0 = 16'hF000;
    defparam convert_count_922_add_4_1.INIT1 = 16'h0555;
    defparam convert_count_922_add_4_1.INJECT1_0 = "NO";
    defparam convert_count_922_add_4_1.INJECT1_1 = "NO";
    LUT4 i3487_2_lut_4_lut (.A(state[0]), .B(state[1]), .C(n17325), .D(data_ready_N_1632), 
         .Z(n6032)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(88[24:31])
    defparam i3487_2_lut_4_lut.init = 16'h0800;
    LUT4 i10605_3_lut_4_lut (.A(sck_count[1]), .B(sck_count[0]), .C(sck_count[2]), 
         .D(sck_count[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(95[62:75])
    defparam i10605_3_lut_4_lut.init = 16'h7f80;
    LUT4 i10598_2_lut_3_lut (.A(sck_count[1]), .B(sck_count[0]), .C(sck_count[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(95[62:75])
    defparam i10598_2_lut_3_lut.init = 16'h7878;
    FD1P3AX data_ready_83 (.D(n1033[0]), .SP(clk_div2_enable_257), .CK(clk_div2), 
            .Q(data_ready)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=198, LSE_RLINE=209 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(69[14] 100[12])
    defparam data_ready_83.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(adc_sck_temp), .B(data_ready), .Z(spare1_c)) /* synthesis lut_function=(A (B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(69[14] 100[12])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i3348_1_lut_rep_460 (.A(state[0]), .Z(n16528)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(70[21] 99[28])
    defparam i3348_1_lut_rep_460.init = 16'h5555;
    LUT4 i1_3_lut_rep_316_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n17325), 
         .D(adc_convert_N_1625), .Z(clk_div2_enable_28)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(70[21] 99[28])
    defparam i1_3_lut_rep_316_4_lut_4_lut.init = 16'h0f0d;
    LUT4 i2_3_lut_4_lut_4_lut (.A(state[0]), .B(n17325), .C(state[1]), 
         .D(adc_convert_N_1625), .Z(clk_div2_enable_5)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(70[21] 99[28])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0301;
    LUT4 i3394_2_lut_4_lut_4_lut (.A(state[0]), .B(adc_convert_N_1625), 
         .C(n17325), .D(state[1]), .Z(state_3__N_1505[0])) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(70[21] 99[28])
    defparam i3394_2_lut_4_lut_4_lut.init = 16'ha5a7;
    FD1P3IX convert_count_922__i3 (.D(n37[3]), .SP(clk_div2_enable_258), 
            .CD(n6035), .CK(clk_div2), .Q(convert_count[3])) /* synthesis syn_preserve=1, syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(82[63:80])
    defparam convert_count_922__i3.GSR = "ENABLED";
    LUT4 i10591_2_lut (.A(sck_count[1]), .B(sck_count[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(95[62:75])
    defparam i10591_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(n8), .B(n6), .C(convert_count[6]), .D(convert_count[4]), 
         .Z(adc_convert_N_1625)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut.init = 16'hfefc;
    LUT4 i991_4_lut (.A(convert_count[0]), .B(convert_count[3]), .C(convert_count[2]), 
         .D(convert_count[1]), .Z(n8)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i991_4_lut.init = 16'hfcec;
    LUT4 i2_2_lut (.A(convert_count[7]), .B(convert_count[5]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i13253_3_lut_4_lut_else_3_lut_4_lut (.A(state[2]), .B(state[3]), 
         .C(state[0]), .D(adc_convert_N_1625), .Z(n16560)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(88[24:31])
    defparam i13253_3_lut_4_lut_else_3_lut_4_lut.init = 16'h1101;
    LUT4 i10589_1_lut (.A(sck_count[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(95[62:75])
    defparam i10589_1_lut.init = 16'h5555;
    LUT4 i9086_2_lut (.A(state[0]), .B(state[1]), .Z(n1033[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(70[21] 99[28])
    defparam i9086_2_lut.init = 16'h2222;
    LUT4 state_3__I_0_i6_2_lut_rep_492 (.A(state[2]), .B(state[3]), .Z(n17325)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(88[24:31])
    defparam state_3__I_0_i6_2_lut_rep_492.init = 16'heeee;
    LUT4 i1_2_lut_rep_394 (.A(state[1]), .B(state[0]), .Z(n16462)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(88[24:31])
    defparam i1_2_lut_rep_394.init = 16'hbbbb;
    LUT4 i2_3_lut_4_lut (.A(adc_convert_N_1625), .B(n16462), .C(state[3]), 
         .D(state[2]), .Z(clk_div2_enable_26)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(70[21] 99[28])
    defparam i2_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_4_lut_adj_182 (.A(adc_convert_N_1625), .B(n16462), .C(state[2]), 
         .D(state[3]), .Z(clk_div2_enable_27)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(70[21] 99[28])
    defparam i2_3_lut_4_lut_adj_182.init = 16'h0010;
    LUT4 i3494_2_lut_3_lut_3_lut_4_lut (.A(state[1]), .B(state[0]), .C(n17325), 
         .D(adc_convert_N_1625), .Z(n6035)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/adc_control.v(88[24:31])
    defparam i3494_2_lut_3_lut_3_lut_4_lut.init = 16'h0400;
    PFUMX i13569 (.BLUT(n16560), .ALUT(n16561), .C0(state[1]), .Z(clk_div2_enable_257));
    
endmodule
//
// Verilog Description of module i2c_slave_top
//

module i2c_slave_top (pulse_width_upper_limit, clk_div2, rate_lower_limit, 
            rate_upper_limit, clk_div2_N_18, GND_net, n16408, n17327, 
            pulse_width_lower_limit, n17326, \static_control[6] , \static_control[5] , 
            \static_control[4] , \static_control[3] , \static_control[8] , 
            \static_control[2] , \static_control[7] , \static_control[9] , 
            system_reset_n_c_2, pwr_good_c_1, \dynamic_control[0] , n16518, 
            \next_state_i_3__N_181[0] , stop_detect_i, start_detect_i_N_352, 
            d_ff, n16517, reset_n, reset_bus_i, count_i_3__N_145, 
            n13409, n11577, n4, n13407, n13408, sda_out, scl_out) /* synthesis syn_module_defined=1 */ ;
    output [31:0]pulse_width_upper_limit;
    input clk_div2;
    output [31:0]rate_lower_limit;
    output [31:0]rate_upper_limit;
    input clk_div2_N_18;
    input GND_net;
    input n16408;
    input n17327;
    output [31:0]pulse_width_lower_limit;
    input n17326;
    output \static_control[6] ;
    output \static_control[5] ;
    output \static_control[4] ;
    output \static_control[3] ;
    output \static_control[8] ;
    output \static_control[2] ;
    output \static_control[7] ;
    output \static_control[9] ;
    input system_reset_n_c_2;
    input pwr_good_c_1;
    output \dynamic_control[0] ;
    output n16518;
    output \next_state_i_3__N_181[0] ;
    output stop_detect_i;
    input start_detect_i_N_352;
    output d_ff;
    input n16517;
    input reset_n;
    output reset_bus_i;
    output count_i_3__N_145;
    input n13409;
    output n11577;
    input n4;
    output n13407;
    output n13408;
    input sda_out;
    input scl_out;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    wire clk_div2_N_18 /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/clock_generator.v(25[16:24])
    
    wire n16425, addr_i_7__N_702;
    wire [7:0]addr_start;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(40[11:21])
    
    wire n16417, addr_i_7__N_703, addr_i_7__N_733;
    wire [15:0]dynamic_control_15__N_647;
    wire [7:0]addr_i_7__N_1072;
    
    wire n16546, n3141, n16430, n16421, n16414, n16415, n16420, 
        n16419, n16422;
    wire [7:0]data_out;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(35[16:24])
    
    wire addr_i_7__N_730, addr_i_7__N_701, addr_i_7__N_727, addr_i_7__N_700, 
        addr_i_7__N_724, addr_i_7__N_699, addr_i_7__N_721, addr_i_7__N_698, 
        addr_i_7__N_718, addr_i_7__N_695, addr_i_7__N_705, addr_i_7__N_736, 
        addr_i_7__N_704, n16523, wr_done_reg2_i, wr_done_reg1_i;
    wire [1:0]state_1__N_1054;
    
    registers registers (.pulse_width_upper_limit({pulse_width_upper_limit}), 
            .clk_div2(clk_div2), .n16425(n16425), .rate_lower_limit({rate_lower_limit}), 
            .rate_upper_limit({rate_upper_limit}), .addr_i_7__N_702(addr_i_7__N_702), 
            .addr_start({addr_start}), .clk_div2_N_18(clk_div2_N_18), .GND_net(GND_net), 
            .n16408(n16408), .n16417(n16417), .n17327(n17327), .pulse_width_lower_limit({pulse_width_lower_limit}), 
            .addr_i_7__N_703(addr_i_7__N_703), .addr_i_7__N_733(addr_i_7__N_733), 
            .n17326(n17326), .dynamic_control_15__N_647({dynamic_control_15__N_647}), 
            .addr_i_7__N_1072({addr_i_7__N_1072}), .n16546(n16546), .\static_control[6] (\static_control[6] ), 
            .\static_control[5] (\static_control[5] ), .n3141(n3141), .\static_control[4] (\static_control[4] ), 
            .n16430(n16430), .\static_control[3] (\static_control[3] ), 
            .\static_control[8] (\static_control[8] ), .n16421(n16421), 
            .n16414(n16414), .n16415(n16415), .n16420(n16420), .n16419(n16419), 
            .n16422(n16422), .\static_control[2] (\static_control[2] ), 
            .\static_control[7] (\static_control[7] ), .\static_control[9] (\static_control[9] ), 
            .data_out({data_out}), .addr_i_7__N_730(addr_i_7__N_730), .addr_i_7__N_701(addr_i_7__N_701), 
            .addr_i_7__N_727(addr_i_7__N_727), .addr_i_7__N_700(addr_i_7__N_700), 
            .addr_i_7__N_724(addr_i_7__N_724), .addr_i_7__N_699(addr_i_7__N_699), 
            .addr_i_7__N_721(addr_i_7__N_721), .addr_i_7__N_698(addr_i_7__N_698), 
            .addr_i_7__N_718(addr_i_7__N_718), .addr_i_7__N_695(addr_i_7__N_695), 
            .addr_i_7__N_705(addr_i_7__N_705), .addr_i_7__N_736(addr_i_7__N_736), 
            .addr_i_7__N_704(addr_i_7__N_704), .n16523(n16523), .wr_done_reg2_i(wr_done_reg2_i), 
            .wr_done_reg1_i(wr_done_reg1_i), .\state_1__N_1054[0] (state_1__N_1054[0]), 
            .system_reset_n_c_2(system_reset_n_c_2), .pwr_good_c_1(pwr_good_c_1), 
            .\dynamic_control[0] (\dynamic_control[0] ), .n16518(n16518)) /* synthesis syn_preserve=1, syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2c_slave_top.v(68[11] 96[2])
    i2cslave_controller_top i2cslave_controller_top (.clk_div2(clk_div2), 
            .\next_state_i_3__N_181[0] (\next_state_i_3__N_181[0] ), .stop_detect_i(stop_detect_i), 
            .start_detect_i_N_352(start_detect_i_N_352), .d_ff(d_ff), .n16517(n16517), 
            .reset_n(reset_n), .\state_1__N_1054[0] (state_1__N_1054[0]), 
            .data_out({data_out}), .reset_bus_i(reset_bus_i), .count_i_3__N_145(count_i_3__N_145), 
            .wr_done_reg1_i(wr_done_reg1_i), .wr_done_reg2_i(wr_done_reg2_i), 
            .n17327(n17327), .n13409(n13409), .n11577(n11577), .n16523(n16523), 
            .addr_start({addr_start}), .addr_i_7__N_1072({addr_i_7__N_1072}), 
            .n16518(n16518), .addr_i_7__N_702(addr_i_7__N_702), .addr_i_7__N_703(addr_i_7__N_703), 
            .addr_i_7__N_733(addr_i_7__N_733), .addr_i_7__N_730(addr_i_7__N_730), 
            .n3141(n3141), .n16546(n16546), .dynamic_control_15__N_647({dynamic_control_15__N_647}), 
            .addr_i_7__N_701(addr_i_7__N_701), .addr_i_7__N_727(addr_i_7__N_727), 
            .addr_i_7__N_700(addr_i_7__N_700), .addr_i_7__N_724(addr_i_7__N_724), 
            .addr_i_7__N_699(addr_i_7__N_699), .addr_i_7__N_721(addr_i_7__N_721), 
            .addr_i_7__N_698(addr_i_7__N_698), .addr_i_7__N_718(addr_i_7__N_718), 
            .addr_i_7__N_695(addr_i_7__N_695), .addr_i_7__N_705(addr_i_7__N_705), 
            .addr_i_7__N_736(addr_i_7__N_736), .addr_i_7__N_704(addr_i_7__N_704), 
            .n16415(n16415), .n16414(n16414), .n16421(n16421), .n16420(n16420), 
            .n16419(n16419), .n16417(n16417), .n16422(n16422), .n16425(n16425), 
            .n16430(n16430), .n4(n4), .n13407(n13407), .n13408(n13408), 
            .sda_out(sda_out), .scl_out(scl_out)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2c_slave_top.v(53[25] 66[2])
    
endmodule
//
// Verilog Description of module registers
//

module registers (pulse_width_upper_limit, clk_div2, n16425, rate_lower_limit, 
            rate_upper_limit, addr_i_7__N_702, addr_start, clk_div2_N_18, 
            GND_net, n16408, n16417, n17327, pulse_width_lower_limit, 
            addr_i_7__N_703, addr_i_7__N_733, n17326, dynamic_control_15__N_647, 
            addr_i_7__N_1072, n16546, \static_control[6] , \static_control[5] , 
            n3141, \static_control[4] , n16430, \static_control[3] , 
            \static_control[8] , n16421, n16414, n16415, n16420, n16419, 
            n16422, \static_control[2] , \static_control[7] , \static_control[9] , 
            data_out, addr_i_7__N_730, addr_i_7__N_701, addr_i_7__N_727, 
            addr_i_7__N_700, addr_i_7__N_724, addr_i_7__N_699, addr_i_7__N_721, 
            addr_i_7__N_698, addr_i_7__N_718, addr_i_7__N_695, addr_i_7__N_705, 
            addr_i_7__N_736, addr_i_7__N_704, n16523, wr_done_reg2_i, 
            wr_done_reg1_i, \state_1__N_1054[0] , system_reset_n_c_2, 
            pwr_good_c_1, \dynamic_control[0] , n16518) /* synthesis syn_preserve=1, syn_module_defined=1 */ ;
    output [31:0]pulse_width_upper_limit;
    input clk_div2;
    input n16425;
    output [31:0]rate_lower_limit;
    output [31:0]rate_upper_limit;
    input addr_i_7__N_702;
    output [7:0]addr_start;
    input clk_div2_N_18;
    input GND_net;
    input n16408;
    input n16417;
    input n17327;
    output [31:0]pulse_width_lower_limit;
    input addr_i_7__N_703;
    input addr_i_7__N_733;
    input n17326;
    input [15:0]dynamic_control_15__N_647;
    input [7:0]addr_i_7__N_1072;
    output n16546;
    output \static_control[6] ;
    output \static_control[5] ;
    output n3141;
    output \static_control[4] ;
    input n16430;
    output \static_control[3] ;
    output \static_control[8] ;
    input n16421;
    input n16414;
    input n16415;
    input n16420;
    input n16419;
    input n16422;
    output \static_control[2] ;
    output \static_control[7] ;
    output \static_control[9] ;
    output [7:0]data_out;
    input addr_i_7__N_730;
    input addr_i_7__N_701;
    input addr_i_7__N_727;
    input addr_i_7__N_700;
    input addr_i_7__N_724;
    input addr_i_7__N_699;
    input addr_i_7__N_721;
    input addr_i_7__N_698;
    input addr_i_7__N_718;
    input addr_i_7__N_695;
    input addr_i_7__N_705;
    input addr_i_7__N_736;
    input addr_i_7__N_704;
    input n16523;
    input wr_done_reg2_i;
    input wr_done_reg1_i;
    input \state_1__N_1054[0] ;
    input system_reset_n_c_2;
    input pwr_good_c_1;
    output \dynamic_control[0] ;
    input n16518;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    wire data_vld_dly /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_slave_top/registers/data_vld_dly */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(54[17:29])
    wire clk_div2_N_18 /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/clock_generator.v(25[16:24])
    
    wire n16435;
    wire [7:0]addr_i;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(39[12:18])
    
    wire n14662, n14620, n24, clk_div2_enable_35, clk_div2_enable_66, 
        clk_div2_enable_97;
    wire [15:0]drive_current_limit;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2c_slave_top.v(35[19:38])
    
    wire clk_div2_enable_128;
    wire [15:0]pwm_current_limit;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2c_slave_top.v(36[19:36])
    
    wire clk_div2_enable_143;
    wire [15:0]cw_current_limit;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(73[13:29])
    
    wire clk_div2_enable_158;
    wire [15:0]pwm_mon_current_limit;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2c_slave_top.v(38[19:40])
    
    wire clk_div2_enable_173;
    wire [15:0]cw_mon_current_limit;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2c_slave_top.v(39[19:39])
    
    wire clk_div2_enable_188;
    wire [15:0]static_control;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(74[13:27])
    
    wire clk_div2_enable_203, n5964, n5817, clk_div2_N_18_enable_8, 
        n13114, n16550;
    wire [31:0]addr_i_7__N_1056;
    
    wire n13115;
    wire [3:0]count;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(53[16:21])
    
    wire count_3__N_751, n10730;
    wire [3:0]n21;
    
    wire n27, n16559, n29;
    wire [1:0]state;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(43[11:16])
    
    wire data_vld_dly_enable_1;
    wire [1:0]state_1__N_741;
    
    wire data_vld_cnt, data_vld_cnt_N_1086;
    wire [1:0]byte_cnt;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(42[11:19])
    
    wire data_vld_dly_enable_2, clk_div2_enable_229, n5959, data_vld_dly_enable_3;
    wire [15:0]dynamic_control;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2c_slave_top.v(40[19:34])
    
    wire clk_div2_enable_256, n5961, n5813;
    wire [7:0]addr_i_7__N_687;
    
    wire n15502;
    wire [7:0]n2306;
    wire [7:0]n2469;
    wire [7:0]n2402;
    wire [7:0]n2270;
    
    wire n5985, n5984, n5983;
    wire [7:0]n2318;
    
    wire n16521, n16175, n5977, n5976, n5975;
    wire [15:0]static_control_adj_1770;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2c_slave_top.v(41[19:33])
    
    wire n16176, n16178;
    wire [7:0]n2529;
    wire [7:0]n2559;
    
    wire n15490;
    wire [7:0]n2569;
    
    wire n16179, n15550, n15529;
    wire [7:0]n2549;
    
    wire n15547, n15526, n15544, n15523, n16387, n5595, n16396, 
        n15541, n15520, n15538, n15517, n16380, n16409, n15535, 
        n15514, n15576, n16381, n16393, n15532, n15511, n16378, 
        n16434, n16379;
    wire [7:0]n2414;
    
    wire n16389, n16522, n16185, n16548, n16184;
    wire [7:0]n2378;
    
    wire n5837, n5829, n17, clk_div2_enable_253, n5833, n5, clk_div2_enable_121;
    wire [7:0]n2366;
    
    wire n16398, n15575, clk_div2_enable_82, clk_div2_enable_245, clk_div2_enable_113, 
        clk_div2_enable_237, clk_div2_enable_105, n16190, n16410, n14621, 
        n92, n96, n5825, n16056, clk_div2_enable_43, clk_div2_enable_51, 
        clk_div2_enable_59, clk_div2_enable_74, clk_div2_enable_90, clk_div2_enable_136, 
        clk_div2_enable_151, clk_div2_enable_166, clk_div2_enable_181, 
        clk_div2_enable_196, clk_div2_enable_211, clk_div2_enable_222, 
        n5992, n5960, data_vld_dly_enable_4, n16189, n5821, n16192, 
        n16193, n5963, n5967, n5971, n5979, n5957, n5747, n16195, 
        n5956, n5955, n79, n16196, n15508, n15505, n16055, n15577, 
        n15503, n16368, n15506, n15507, n15509, n15510, n15512, 
        n15513, n16388, n14656;
    wire [7:0]n2330;
    
    wire n15515, n16369, n2558, n16383, n13113, n13112, n15518, 
        n16370;
    wire [7:0]n2282;
    
    wire n15521, n16371, n15524, n16372, n15546, n15549, n5973, 
        n5972, n15527, n16373, n16418, n15530, n15531, n15533, 
        n15534, n15536, n15537, n16429, n15573, n15572;
    wire [7:0]n2426;
    wire [7:0]n2519;
    
    wire n15574, n15570, n15571, n15568, n5981, n5980, n5969, 
        n5968, n5965, n15565, n15562, n15559, n15539, n15540, 
        n15542, n15543, n15545, n15548, n15569, n15567, n15566, 
        n15564, n15563, n15561, n15560, n15558, n15557, n15552, 
        n15551, n15553, n27_adj_1767, n25_adj_1768, n26, n24_adj_1769, 
        n16424, n16404, n16412, n16411, n16413, n86, n16197, n16194, 
        n16191, n16186, n16057, n16180, n16177, n16174, n16173, 
        n16172;
    
    LUT4 i1_4_lut_4_lut (.A(n16435), .B(addr_i[5]), .C(n14662), .D(n14620), 
         .Z(n24)) /* synthesis lut_function=(!(A+(B (C)+!B !(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h1504;
    FD1P3AX pulse_width_upper_limit_i0 (.D(n16425), .SP(clk_div2_enable_35), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i0.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i0 (.D(n16425), .SP(clk_div2_enable_66), .CK(clk_div2), 
            .Q(rate_lower_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i0.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i0 (.D(n16425), .SP(clk_div2_enable_97), .CK(clk_div2), 
            .Q(rate_upper_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i0.GSR = "ENABLED";
    FD1P3AX drive_current_limit_i0 (.D(n16425), .SP(clk_div2_enable_128), 
            .CK(clk_div2), .Q(drive_current_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i0.GSR = "ENABLED";
    FD1P3AX pwm_current_limit_i0 (.D(n16425), .SP(clk_div2_enable_143), 
            .CK(clk_div2), .Q(pwm_current_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i0.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i0 (.D(n16425), .SP(clk_div2_enable_158), .CK(clk_div2), 
            .Q(cw_current_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i0.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i0 (.D(n16425), .SP(clk_div2_enable_173), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i0.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i0 (.D(n16425), .SP(clk_div2_enable_188), 
            .CK(clk_div2), .Q(cw_mon_current_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i0.GSR = "ENABLED";
    FD1P3AX static_control_i0 (.D(n16425), .SP(clk_div2_enable_203), .CK(clk_div2), 
            .Q(static_control[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i0.GSR = "ENABLED";
    FD1S3BX addr_i_reg_i2_3418_3419_set (.D(n5817), .CK(data_vld_dly), .PD(addr_i_7__N_702), 
            .Q(n5964)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i2_3418_3419_set.GSR = "DISABLED";
    FD1P3AX addr_start_i0 (.D(n16425), .SP(clk_div2_N_18_enable_8), .CK(clk_div2_N_18), 
            .Q(addr_start[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(190[3] 201[6])
    defparam addr_start_i0.GSR = "ENABLED";
    CCU2D add_279_7 (.A0(addr_i[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16550), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13114), 
          .COUT(n13115), .S0(addr_i_7__N_1056[5]), .S1(addr_i_7__N_1056[6]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(237[20:34])
    defparam add_279_7.INIT0 = 16'h5aaa;
    defparam add_279_7.INIT1 = 16'h5aaa;
    defparam add_279_7.INJECT1_0 = "NO";
    defparam add_279_7.INJECT1_1 = "NO";
    FD1P3IX count_923__i3 (.D(n21[3]), .SP(count_3__N_751), .CD(n10730), 
            .CK(clk_div2), .Q(count[3])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(91[26:35])
    defparam count_923__i3.GSR = "ENABLED";
    PFUMX i44 (.BLUT(n24), .ALUT(n27), .C0(n16559), .Z(n29));
    FD1P3DX state_i0 (.D(state_1__N_741[0]), .SP(data_vld_dly_enable_1), 
            .CK(data_vld_dly), .CD(n16408), .Q(state[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam state_i0.GSR = "DISABLED";
    FD1S3AX data_vld_cnt_192 (.D(data_vld_cnt_N_1086), .CK(clk_div2_N_18), 
            .Q(data_vld_cnt)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(190[3] 201[6])
    defparam data_vld_cnt_192.GSR = "ENABLED";
    FD1S3AX data_vld_dly_193 (.D(n16417), .CK(clk_div2_N_18), .Q(data_vld_dly)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(190[3] 201[6])
    defparam data_vld_dly_193.GSR = "ENABLED";
    FD1P3DX byte_cnt_i0 (.D(n17327), .SP(data_vld_dly_enable_2), .CK(data_vld_dly), 
            .CD(n16408), .Q(byte_cnt[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam byte_cnt_i0.GSR = "DISABLED";
    FD1P3IX count_923__i2 (.D(n21[2]), .SP(count_3__N_751), .CD(n10730), 
            .CK(clk_div2), .Q(count[2])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(91[26:35])
    defparam count_923__i2.GSR = "ENABLED";
    FD1P3IX count_923__i1 (.D(n21[1]), .SP(count_3__N_751), .CD(n10730), 
            .CK(clk_div2), .Q(count[1])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(91[26:35])
    defparam count_923__i1.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i0 (.D(n16425), .SP(clk_div2_enable_229), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i0.GSR = "ENABLED";
    FD1S1D i3413 (.D(n17327), .CK(addr_i_7__N_703), .CD(addr_i_7__N_733), 
           .Q(n5959));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3413.GSR = "DISABLED";
    FD1P3DX byte_cnt_i1 (.D(n17326), .SP(data_vld_dly_enable_3), .CK(data_vld_dly), 
            .CD(n16408), .Q(byte_cnt[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam byte_cnt_i1.GSR = "DISABLED";
    FD1P3AX dynamic_control_i6 (.D(dynamic_control_15__N_647[6]), .SP(clk_div2_enable_256), 
            .CK(clk_div2), .Q(dynamic_control[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i6.GSR = "ENABLED";
    FD1P3AX dynamic_control_i5 (.D(dynamic_control_15__N_647[5]), .SP(clk_div2_enable_256), 
            .CK(clk_div2), .Q(dynamic_control[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i5.GSR = "ENABLED";
    FD1P3AX dynamic_control_i4 (.D(dynamic_control_15__N_647[4]), .SP(clk_div2_enable_256), 
            .CK(clk_div2), .Q(dynamic_control[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i4.GSR = "ENABLED";
    FD1S3DX addr_i_reg_i1_3414_3415_reset (.D(n5813), .CK(data_vld_dly), 
            .CD(addr_i_7__N_733), .Q(n5961)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i1_3414_3415_reset.GSR = "DISABLED";
    PFUMX i3267 (.BLUT(addr_i_7__N_1072[1]), .ALUT(addr_i_7__N_687[1]), 
          .C0(n15502), .Z(n5813));
    FD1P3AX dynamic_control_i2 (.D(dynamic_control_15__N_647[2]), .SP(clk_div2_enable_256), 
            .CK(clk_div2), .Q(dynamic_control[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i2.GSR = "ENABLED";
    LUT4 mux_662_i1_3_lut (.A(pulse_width_lower_limit[0]), .B(n2306[0]), 
         .C(n16546), .Z(n2469[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_662_i1_3_lut.init = 16'hcaca;
    LUT4 i13318_2_lut_4_lut_2_lut_4_lut (.A(state[0]), .B(state[1]), .Z(n15502)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13318_2_lut_4_lut_2_lut_4_lut.init = 16'heeee;
    LUT4 mux_643_i1_3_lut (.A(drive_current_limit[0]), .B(pwm_current_limit[0]), 
         .C(n16559), .Z(n2402[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_643_i1_3_lut.init = 16'hcaca;
    LUT4 mux_599_i2_3_lut (.A(cw_current_limit[9]), .B(pwm_mon_current_limit[9]), 
         .C(n16559), .Z(n2270[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_599_i2_3_lut.init = 16'hcaca;
    LUT4 i3440_3_lut (.A(n5985), .B(n5984), .C(n5983), .Z(addr_i[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3440_3_lut.init = 16'hcaca;
    LUT4 mux_615_i2_3_lut (.A(drive_current_limit[9]), .B(pwm_current_limit[9]), 
         .C(n16559), .Z(n2318[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_615_i2_3_lut.init = 16'hcaca;
    LUT4 addr_i_4__bdd_3_lut_13462 (.A(n16521), .B(pulse_width_upper_limit[6]), 
         .C(cw_current_limit[6]), .Z(n16175)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13462.init = 16'he4e4;
    LUT4 i3432_3_lut (.A(n5977), .B(n5976), .C(n5975), .Z(addr_i[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3432_3_lut.init = 16'hcaca;
    LUT4 mux_599_i3_3_lut (.A(cw_current_limit[10]), .B(pwm_mon_current_limit[10]), 
         .C(n16559), .Z(n2270[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_599_i3_3_lut.init = 16'hcaca;
    LUT4 mux_615_i3_3_lut (.A(drive_current_limit[10]), .B(pwm_current_limit[10]), 
         .C(n16559), .Z(n2318[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_615_i3_3_lut.init = 16'hcaca;
    LUT4 addr_i_4__bdd_3_lut_13465 (.A(n16546), .B(\static_control[6] ), 
         .C(static_control_adj_1770[14]), .Z(n16176)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13465.init = 16'he4e4;
    LUT4 mux_599_i4_3_lut (.A(cw_current_limit[11]), .B(pwm_mon_current_limit[11]), 
         .C(n16559), .Z(n2270[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_599_i4_3_lut.init = 16'hcaca;
    LUT4 mux_615_i4_3_lut (.A(drive_current_limit[11]), .B(pwm_current_limit[11]), 
         .C(n16559), .Z(n2318[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_615_i4_3_lut.init = 16'hcaca;
    LUT4 mux_599_i5_3_lut (.A(cw_current_limit[12]), .B(pwm_mon_current_limit[12]), 
         .C(n16559), .Z(n2270[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_599_i5_3_lut.init = 16'hcaca;
    LUT4 mux_615_i5_3_lut (.A(drive_current_limit[12]), .B(pwm_current_limit[12]), 
         .C(n16559), .Z(n2318[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_615_i5_3_lut.init = 16'hcaca;
    LUT4 mux_599_i6_3_lut (.A(cw_current_limit[13]), .B(pwm_mon_current_limit[13]), 
         .C(n16559), .Z(n2270[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_599_i6_3_lut.init = 16'hcaca;
    LUT4 addr_i_4__bdd_3_lut_13466 (.A(n16521), .B(pulse_width_upper_limit[5]), 
         .C(cw_current_limit[5]), .Z(n16178)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13466.init = 16'he4e4;
    PFUMX mux_682_i8 (.BLUT(n2529[7]), .ALUT(n2559[7]), .C0(n15490), .Z(n2569[7]));
    LUT4 mux_615_i6_3_lut (.A(drive_current_limit[13]), .B(pwm_current_limit[13]), 
         .C(n16559), .Z(n2318[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_615_i6_3_lut.init = 16'hcaca;
    PFUMX mux_682_i7 (.BLUT(n2529[6]), .ALUT(n2559[6]), .C0(n15490), .Z(n2569[6]));
    LUT4 addr_i_4__bdd_3_lut_13471 (.A(n16546), .B(\static_control[5] ), 
         .C(static_control_adj_1770[13]), .Z(n16179)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13471.init = 16'he4e4;
    LUT4 mux_599_i7_3_lut (.A(cw_current_limit[14]), .B(pwm_mon_current_limit[14]), 
         .C(n16559), .Z(n2270[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_599_i7_3_lut.init = 16'hcaca;
    PFUMX mux_682_i6 (.BLUT(n2529[5]), .ALUT(n2559[5]), .C0(n15490), .Z(n2569[5]));
    L6MUX21 mux_678_i8 (.D0(n15550), .D1(n15529), .SD(n16546), .Z(n2549[7]));
    LUT4 mux_615_i7_3_lut (.A(drive_current_limit[14]), .B(pwm_current_limit[14]), 
         .C(n16559), .Z(n2318[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_615_i7_3_lut.init = 16'hcaca;
    PFUMX mux_682_i5 (.BLUT(n2529[4]), .ALUT(n2559[4]), .C0(n15490), .Z(n2569[4]));
    L6MUX21 mux_678_i7 (.D0(n15547), .D1(n15526), .SD(n16546), .Z(n2549[6]));
    L6MUX21 mux_678_i6 (.D0(n15544), .D1(n15523), .SD(n16546), .Z(n2549[5]));
    LUT4 mux_599_i8_3_lut (.A(cw_current_limit[15]), .B(pwm_mon_current_limit[15]), 
         .C(n16559), .Z(n2270[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_599_i8_3_lut.init = 16'hcaca;
    PFUMX mux_682_i4 (.BLUT(n2529[3]), .ALUT(n2559[3]), .C0(n15490), .Z(n2569[3]));
    LUT4 i13286_2_lut_4_lut_4_lut (.A(n16546), .B(n16387), .C(n5595), 
         .D(n16396), .Z(clk_div2_enable_203)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(94[7] 127[8])
    defparam i13286_2_lut_4_lut_4_lut.init = 16'h1000;
    L6MUX21 mux_678_i5 (.D0(n15541), .D1(n15520), .SD(n16546), .Z(n2549[4]));
    L6MUX21 mux_678_i4 (.D0(n15538), .D1(n15517), .SD(n16546), .Z(n2549[3]));
    LUT4 i13308_2_lut_3_lut_4_lut_4_lut (.A(n16546), .B(n16380), .C(n16387), 
         .D(n16409), .Z(clk_div2_enable_188)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(94[7] 127[8])
    defparam i13308_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    L6MUX21 mux_678_i3 (.D0(n15535), .D1(n15514), .SD(n16546), .Z(n2549[2]));
    PFUMX mux_682_i3 (.BLUT(n2529[2]), .ALUT(n2559[2]), .C0(n15490), .Z(n2569[2]));
    LUT4 i13068_3_lut (.A(pulse_width_upper_limit[31]), .B(rate_upper_limit[31]), 
         .C(n16435), .Z(n15576)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13068_3_lut.init = 16'hcaca;
    LUT4 i13310_2_lut_3_lut_4_lut_4_lut (.A(n16546), .B(n16381), .C(n16409), 
         .D(n16393), .Z(clk_div2_enable_173)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(94[7] 127[8])
    defparam i13310_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 mux_615_i8_3_lut (.A(drive_current_limit[15]), .B(pwm_current_limit[15]), 
         .C(n16559), .Z(n2318[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_615_i8_3_lut.init = 16'hcaca;
    L6MUX21 mux_678_i2 (.D0(n15532), .D1(n15511), .SD(n16546), .Z(n2549[1]));
    LUT4 i13312_2_lut_3_lut_4_lut_4_lut (.A(n16546), .B(n16381), .C(n16387), 
         .D(n16409), .Z(clk_div2_enable_158)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(94[7] 127[8])
    defparam i13312_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 i13325_2_lut_3_lut_4_lut_4_lut (.A(n16546), .B(n16378), .C(n16409), 
         .D(n16393), .Z(clk_div2_enable_143)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(94[7] 127[8])
    defparam i13325_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_3_lut (.A(n16546), .B(n10730), .C(n3141), .Z(clk_div2_enable_256)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'hdcdc;
    LUT4 i1_2_lut_rep_311_3_lut_4_lut (.A(addr_i[5]), .B(n16521), .C(n16434), 
         .D(n16559), .Z(n16379)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_311_3_lut_4_lut.init = 16'h0004;
    LUT4 mux_647_i2_3_lut (.A(rate_lower_limit[1]), .B(cw_mon_current_limit[1]), 
         .C(n16521), .Z(n2414[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_647_i2_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(n16393), .B(n5595), .C(n16389), .D(n16522), .Z(n3141)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 mux_643_i2_3_lut (.A(drive_current_limit[1]), .B(pwm_current_limit[1]), 
         .C(n16559), .Z(n2402[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_643_i2_3_lut.init = 16'hcaca;
    LUT4 mux_647_i3_3_lut (.A(rate_lower_limit[2]), .B(cw_mon_current_limit[2]), 
         .C(n16521), .Z(n2414[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_647_i3_3_lut.init = 16'hcaca;
    LUT4 mux_643_i3_3_lut (.A(drive_current_limit[2]), .B(pwm_current_limit[2]), 
         .C(n16559), .Z(n2402[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_643_i3_3_lut.init = 16'hcaca;
    LUT4 addr_i_4__bdd_3_lut_13476 (.A(n16546), .B(\static_control[4] ), 
         .C(static_control_adj_1770[12]), .Z(n16185)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13476.init = 16'he4e4;
    LUT4 mux_647_i4_3_lut (.A(rate_lower_limit[3]), .B(cw_mon_current_limit[3]), 
         .C(n16521), .Z(n2414[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_647_i4_3_lut.init = 16'hcaca;
    PFUMX mux_682_i2 (.BLUT(n2529[1]), .ALUT(n2559[1]), .C0(n15490), .Z(n2569[1]));
    LUT4 mux_643_i4_3_lut (.A(drive_current_limit[3]), .B(pwm_current_limit[3]), 
         .C(n16559), .Z(n2402[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_643_i4_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(n16435), .B(n16548), .C(addr_i[5]), .D(n16521), 
         .Z(n5595)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0010;
    LUT4 addr_i_4__bdd_3_lut_13472 (.A(n16521), .B(pulse_width_upper_limit[4]), 
         .C(cw_current_limit[4]), .Z(n16184)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13472.init = 16'he4e4;
    PFUMX mux_682_i1 (.BLUT(n2529[0]), .ALUT(n2559[0]), .C0(n15490), .Z(n2569[0]));
    LUT4 mux_635_i6_3_lut (.A(rate_upper_limit[5]), .B(rate_upper_limit[21]), 
         .C(n16559), .Z(n2378[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_635_i6_3_lut.init = 16'hcaca;
    PFUMX i3291 (.BLUT(addr_i_7__N_1072[7]), .ALUT(addr_i_7__N_687[7]), 
          .C0(n15502), .Z(n5837));
    PFUMX i3271 (.BLUT(addr_i_7__N_1072[2]), .ALUT(addr_i_7__N_687[2]), 
          .C0(n15502), .Z(n5817));
    PFUMX i3283 (.BLUT(addr_i_7__N_1072[5]), .ALUT(addr_i_7__N_687[5]), 
          .C0(n15502), .Z(n5829));
    LUT4 i1_2_lut_3_lut (.A(n16559), .B(n16546), .C(n17), .Z(clk_div2_enable_253)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    PFUMX i3287 (.BLUT(addr_i_7__N_1072[6]), .ALUT(addr_i_7__N_687[6]), 
          .C0(n15502), .Z(n5833));
    LUT4 i1_2_lut_3_lut_adj_168 (.A(n16559), .B(n16546), .C(n5), .Z(clk_div2_enable_121)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_168.init = 16'h8080;
    LUT4 mux_631_i6_3_lut (.A(pulse_width_upper_limit[21]), .B(pwm_mon_current_limit[5]), 
         .C(n16521), .Z(n2366[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_631_i6_3_lut.init = 16'hcaca;
    LUT4 i13332_2_lut_2_lut_3_lut_4_lut (.A(n16398), .B(n16380), .C(n16559), 
         .D(n16546), .Z(clk_div2_enable_66)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam i13332_2_lut_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i13067_3_lut (.A(pulse_width_lower_limit[31]), .B(rate_lower_limit[31]), 
         .C(n16435), .Z(n15575)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13067_3_lut.init = 16'hcaca;
    LUT4 mux_662_i2_3_lut (.A(pulse_width_lower_limit[1]), .B(n2306[1]), 
         .C(n16546), .Z(n2469[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_662_i2_3_lut.init = 16'hcaca;
    LUT4 i13320_2_lut_2_lut_3_lut_4_lut (.A(n16398), .B(n16380), .C(n16559), 
         .D(n16546), .Z(clk_div2_enable_82)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam i13320_2_lut_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i13302_2_lut_2_lut_3_lut (.A(n16546), .B(n16559), .C(n17), .Z(clk_div2_enable_245)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i13302_2_lut_2_lut_3_lut.init = 16'h4040;
    LUT4 mux_662_i3_3_lut (.A(pulse_width_lower_limit[2]), .B(n2306[2]), 
         .C(n16546), .Z(n2469[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_662_i3_3_lut.init = 16'hcaca;
    FD1P3AX pulse_width_upper_limit_i1 (.D(n16430), .SP(clk_div2_enable_35), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i1.GSR = "ENABLED";
    LUT4 i13316_2_lut_2_lut_3_lut (.A(n16546), .B(n16559), .C(n5), .Z(clk_div2_enable_113)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i13316_2_lut_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_169 (.A(n16546), .B(n16559), .C(n17), .Z(clk_div2_enable_237)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_169.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_170 (.A(n16546), .B(n16559), .C(n5), .Z(clk_div2_enable_105)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_170.init = 16'h2020;
    LUT4 addr_i_4__bdd_3_lut_13480 (.A(n16546), .B(\static_control[3] ), 
         .C(static_control_adj_1770[11]), .Z(n16190)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13480.init = 16'he4e4;
    LUT4 mux_662_i4_3_lut (.A(pulse_width_lower_limit[3]), .B(n2306[3]), 
         .C(n16546), .Z(n2469[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_662_i4_3_lut.init = 16'hcaca;
    LUT4 i13327_2_lut_3_lut_4_lut_4_lut (.A(n16546), .B(n16379), .C(n16410), 
         .D(n16396), .Z(clk_div2_enable_128)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(94[7] 127[8])
    defparam i13327_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    PFUMX i130 (.BLUT(n14621), .ALUT(n92), .C0(n16521), .Z(n96));
    LUT4 mux_662_i5_3_lut (.A(pulse_width_lower_limit[4]), .B(n2306[4]), 
         .C(n16546), .Z(n2469[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_662_i5_3_lut.init = 16'hcaca;
    PFUMX i3279 (.BLUT(addr_i_7__N_1072[4]), .ALUT(addr_i_7__N_687[4]), 
          .C0(n15502), .Z(n5825));
    LUT4 addr_i_4__bdd_3_lut_13457 (.A(n16546), .B(static_control[0]), .C(\static_control[8] ), 
         .Z(n16056)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13457.init = 16'he4e4;
    FD1P3AX pulse_width_upper_limit_i2 (.D(n16421), .SP(clk_div2_enable_35), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i2.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i3 (.D(n16414), .SP(clk_div2_enable_35), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i3.GSR = "ENABLED";
    FD1P3AY pulse_width_upper_limit_i4 (.D(n16415), .SP(clk_div2_enable_35), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i4.GSR = "ENABLED";
    FD1P3AY pulse_width_upper_limit_i5 (.D(n16420), .SP(clk_div2_enable_35), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i5.GSR = "ENABLED";
    FD1P3AY pulse_width_upper_limit_i6 (.D(n16419), .SP(clk_div2_enable_35), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i6.GSR = "ENABLED";
    FD1P3AY pulse_width_upper_limit_i7 (.D(n16422), .SP(clk_div2_enable_35), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i7.GSR = "ENABLED";
    FD1P3AY pulse_width_upper_limit_i8 (.D(n16425), .SP(clk_div2_enable_43), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i8.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i9 (.D(n16430), .SP(clk_div2_enable_43), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i9.GSR = "ENABLED";
    FD1P3AY pulse_width_upper_limit_i10 (.D(n16421), .SP(clk_div2_enable_43), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i10.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i11 (.D(n16414), .SP(clk_div2_enable_43), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i11.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i12 (.D(n16415), .SP(clk_div2_enable_43), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i12.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i13 (.D(n16420), .SP(clk_div2_enable_43), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i13.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i14 (.D(n16419), .SP(clk_div2_enable_43), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i14.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i15 (.D(n16422), .SP(clk_div2_enable_43), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i15.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i16 (.D(n16425), .SP(clk_div2_enable_51), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[16])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i16.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i17 (.D(n16430), .SP(clk_div2_enable_51), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[17])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i17.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i18 (.D(n16421), .SP(clk_div2_enable_51), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[18])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i18.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i19 (.D(n16414), .SP(clk_div2_enable_51), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[19])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i19.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i20 (.D(n16415), .SP(clk_div2_enable_51), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[20])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i20.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i21 (.D(n16420), .SP(clk_div2_enable_51), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[21])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i21.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i22 (.D(n16419), .SP(clk_div2_enable_51), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[22])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i22.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i23 (.D(n16422), .SP(clk_div2_enable_51), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[23])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i23.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i24 (.D(n16425), .SP(clk_div2_enable_59), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[24])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i24.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i25 (.D(n16430), .SP(clk_div2_enable_59), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[25])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i25.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i26 (.D(n16421), .SP(clk_div2_enable_59), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[26])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i26.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i27 (.D(n16414), .SP(clk_div2_enable_59), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[27])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i27.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i28 (.D(n16415), .SP(clk_div2_enable_59), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[28])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i28.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i29 (.D(n16420), .SP(clk_div2_enable_59), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[29])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i29.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i30 (.D(n16419), .SP(clk_div2_enable_59), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[30])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i30.GSR = "ENABLED";
    FD1P3AX pulse_width_upper_limit_i31 (.D(n16422), .SP(clk_div2_enable_59), 
            .CK(clk_div2), .Q(pulse_width_upper_limit[31])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_upper_limit_i31.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i1 (.D(n16430), .SP(clk_div2_enable_66), .CK(clk_div2), 
            .Q(rate_lower_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i1.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i2 (.D(n16421), .SP(clk_div2_enable_66), .CK(clk_div2), 
            .Q(rate_lower_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i2.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i3 (.D(n16414), .SP(clk_div2_enable_66), .CK(clk_div2), 
            .Q(rate_lower_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i3.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i4 (.D(n16415), .SP(clk_div2_enable_66), .CK(clk_div2), 
            .Q(rate_lower_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i4.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i5 (.D(n16420), .SP(clk_div2_enable_66), .CK(clk_div2), 
            .Q(rate_lower_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i5.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i6 (.D(n16419), .SP(clk_div2_enable_66), .CK(clk_div2), 
            .Q(rate_lower_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i6.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i7 (.D(n16422), .SP(clk_div2_enable_66), .CK(clk_div2), 
            .Q(rate_lower_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i7.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i8 (.D(n16425), .SP(clk_div2_enable_74), .CK(clk_div2), 
            .Q(rate_lower_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i8.GSR = "ENABLED";
    FD1P3AY rate_lower_limit_i9 (.D(n16430), .SP(clk_div2_enable_74), .CK(clk_div2), 
            .Q(rate_lower_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i9.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i10 (.D(n16421), .SP(clk_div2_enable_74), .CK(clk_div2), 
            .Q(rate_lower_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i10.GSR = "ENABLED";
    FD1P3AY rate_lower_limit_i11 (.D(n16414), .SP(clk_div2_enable_74), .CK(clk_div2), 
            .Q(rate_lower_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i11.GSR = "ENABLED";
    FD1P3AY rate_lower_limit_i12 (.D(n16415), .SP(clk_div2_enable_74), .CK(clk_div2), 
            .Q(rate_lower_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i12.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i13 (.D(n16420), .SP(clk_div2_enable_74), .CK(clk_div2), 
            .Q(rate_lower_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i13.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i14 (.D(n16419), .SP(clk_div2_enable_74), .CK(clk_div2), 
            .Q(rate_lower_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i14.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i15 (.D(n16422), .SP(clk_div2_enable_74), .CK(clk_div2), 
            .Q(rate_lower_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i15.GSR = "ENABLED";
    FD1P3AY rate_lower_limit_i16 (.D(n16425), .SP(clk_div2_enable_82), .CK(clk_div2), 
            .Q(rate_lower_limit[16])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i16.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i17 (.D(n16430), .SP(clk_div2_enable_82), .CK(clk_div2), 
            .Q(rate_lower_limit[17])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i17.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i18 (.D(n16421), .SP(clk_div2_enable_82), .CK(clk_div2), 
            .Q(rate_lower_limit[18])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i18.GSR = "ENABLED";
    FD1P3AY rate_lower_limit_i19 (.D(n16414), .SP(clk_div2_enable_82), .CK(clk_div2), 
            .Q(rate_lower_limit[19])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i19.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i20 (.D(n16415), .SP(clk_div2_enable_82), .CK(clk_div2), 
            .Q(rate_lower_limit[20])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i20.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i21 (.D(n16420), .SP(clk_div2_enable_82), .CK(clk_div2), 
            .Q(rate_lower_limit[21])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i21.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i22 (.D(n16419), .SP(clk_div2_enable_82), .CK(clk_div2), 
            .Q(rate_lower_limit[22])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i22.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i23 (.D(n16422), .SP(clk_div2_enable_82), .CK(clk_div2), 
            .Q(rate_lower_limit[23])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i23.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i24 (.D(n16425), .SP(clk_div2_enable_90), .CK(clk_div2), 
            .Q(rate_lower_limit[24])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i24.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i25 (.D(n16430), .SP(clk_div2_enable_90), .CK(clk_div2), 
            .Q(rate_lower_limit[25])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i25.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i26 (.D(n16421), .SP(clk_div2_enable_90), .CK(clk_div2), 
            .Q(rate_lower_limit[26])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i26.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i27 (.D(n16414), .SP(clk_div2_enable_90), .CK(clk_div2), 
            .Q(rate_lower_limit[27])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i27.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i28 (.D(n16415), .SP(clk_div2_enable_90), .CK(clk_div2), 
            .Q(rate_lower_limit[28])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i28.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i29 (.D(n16420), .SP(clk_div2_enable_90), .CK(clk_div2), 
            .Q(rate_lower_limit[29])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i29.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i30 (.D(n16419), .SP(clk_div2_enable_90), .CK(clk_div2), 
            .Q(rate_lower_limit[30])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i30.GSR = "ENABLED";
    FD1P3AX rate_lower_limit_i31 (.D(n16422), .SP(clk_div2_enable_90), .CK(clk_div2), 
            .Q(rate_lower_limit[31])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_lower_limit_i31.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i1 (.D(n16430), .SP(clk_div2_enable_97), .CK(clk_div2), 
            .Q(rate_upper_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i1.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i2 (.D(n16421), .SP(clk_div2_enable_97), .CK(clk_div2), 
            .Q(rate_upper_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i2.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i3 (.D(n16414), .SP(clk_div2_enable_97), .CK(clk_div2), 
            .Q(rate_upper_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i3.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i4 (.D(n16415), .SP(clk_div2_enable_97), .CK(clk_div2), 
            .Q(rate_upper_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i4.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i5 (.D(n16420), .SP(clk_div2_enable_97), .CK(clk_div2), 
            .Q(rate_upper_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i5.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i6 (.D(n16419), .SP(clk_div2_enable_97), .CK(clk_div2), 
            .Q(rate_upper_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i6.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i7 (.D(n16422), .SP(clk_div2_enable_97), .CK(clk_div2), 
            .Q(rate_upper_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i7.GSR = "ENABLED";
    FD1P3AY rate_upper_limit_i8 (.D(n16425), .SP(clk_div2_enable_105), .CK(clk_div2), 
            .Q(rate_upper_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i8.GSR = "ENABLED";
    FD1P3AY rate_upper_limit_i9 (.D(n16430), .SP(clk_div2_enable_105), .CK(clk_div2), 
            .Q(rate_upper_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i9.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i10 (.D(n16421), .SP(clk_div2_enable_105), 
            .CK(clk_div2), .Q(rate_upper_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i10.GSR = "ENABLED";
    FD1P3AY rate_upper_limit_i11 (.D(n16414), .SP(clk_div2_enable_105), 
            .CK(clk_div2), .Q(rate_upper_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i11.GSR = "ENABLED";
    FD1P3AY rate_upper_limit_i12 (.D(n16415), .SP(clk_div2_enable_105), 
            .CK(clk_div2), .Q(rate_upper_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i12.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i13 (.D(n16420), .SP(clk_div2_enable_105), 
            .CK(clk_div2), .Q(rate_upper_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i13.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i14 (.D(n16419), .SP(clk_div2_enable_105), 
            .CK(clk_div2), .Q(rate_upper_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i14.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i15 (.D(n16422), .SP(clk_div2_enable_105), 
            .CK(clk_div2), .Q(rate_upper_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i15.GSR = "ENABLED";
    FD1P3AY rate_upper_limit_i16 (.D(n16425), .SP(clk_div2_enable_113), 
            .CK(clk_div2), .Q(rate_upper_limit[16])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i16.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i17 (.D(n16430), .SP(clk_div2_enable_113), 
            .CK(clk_div2), .Q(rate_upper_limit[17])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i17.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i18 (.D(n16421), .SP(clk_div2_enable_113), 
            .CK(clk_div2), .Q(rate_upper_limit[18])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i18.GSR = "ENABLED";
    FD1P3AY rate_upper_limit_i19 (.D(n16414), .SP(clk_div2_enable_113), 
            .CK(clk_div2), .Q(rate_upper_limit[19])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i19.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i20 (.D(n16415), .SP(clk_div2_enable_113), 
            .CK(clk_div2), .Q(rate_upper_limit[20])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i20.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i21 (.D(n16420), .SP(clk_div2_enable_113), 
            .CK(clk_div2), .Q(rate_upper_limit[21])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i21.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i22 (.D(n16419), .SP(clk_div2_enable_113), 
            .CK(clk_div2), .Q(rate_upper_limit[22])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i22.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i23 (.D(n16422), .SP(clk_div2_enable_113), 
            .CK(clk_div2), .Q(rate_upper_limit[23])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i23.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i24 (.D(n16425), .SP(clk_div2_enable_121), 
            .CK(clk_div2), .Q(rate_upper_limit[24])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i24.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i25 (.D(n16430), .SP(clk_div2_enable_121), 
            .CK(clk_div2), .Q(rate_upper_limit[25])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i25.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i26 (.D(n16421), .SP(clk_div2_enable_121), 
            .CK(clk_div2), .Q(rate_upper_limit[26])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i26.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i27 (.D(n16414), .SP(clk_div2_enable_121), 
            .CK(clk_div2), .Q(rate_upper_limit[27])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i27.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i28 (.D(n16415), .SP(clk_div2_enable_121), 
            .CK(clk_div2), .Q(rate_upper_limit[28])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i28.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i29 (.D(n16420), .SP(clk_div2_enable_121), 
            .CK(clk_div2), .Q(rate_upper_limit[29])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i29.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i30 (.D(n16419), .SP(clk_div2_enable_121), 
            .CK(clk_div2), .Q(rate_upper_limit[30])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i30.GSR = "ENABLED";
    FD1P3AX rate_upper_limit_i31 (.D(n16422), .SP(clk_div2_enable_121), 
            .CK(clk_div2), .Q(rate_upper_limit[31])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam rate_upper_limit_i31.GSR = "ENABLED";
    FD1P3AX drive_current_limit_i1 (.D(n16430), .SP(clk_div2_enable_128), 
            .CK(clk_div2), .Q(drive_current_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i1.GSR = "ENABLED";
    FD1P3AX drive_current_limit_i2 (.D(n16421), .SP(clk_div2_enable_128), 
            .CK(clk_div2), .Q(drive_current_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i2.GSR = "ENABLED";
    FD1P3AX drive_current_limit_i3 (.D(n16414), .SP(clk_div2_enable_128), 
            .CK(clk_div2), .Q(drive_current_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i3.GSR = "ENABLED";
    FD1P3AX drive_current_limit_i4 (.D(n16415), .SP(clk_div2_enable_128), 
            .CK(clk_div2), .Q(drive_current_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i4.GSR = "ENABLED";
    FD1P3AX drive_current_limit_i5 (.D(n16420), .SP(clk_div2_enable_128), 
            .CK(clk_div2), .Q(drive_current_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i5.GSR = "ENABLED";
    FD1P3AX drive_current_limit_i6 (.D(n16419), .SP(clk_div2_enable_128), 
            .CK(clk_div2), .Q(drive_current_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i6.GSR = "ENABLED";
    FD1P3AX drive_current_limit_i7 (.D(n16422), .SP(clk_div2_enable_128), 
            .CK(clk_div2), .Q(drive_current_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i7.GSR = "ENABLED";
    FD1P3AY drive_current_limit_i8 (.D(n16425), .SP(clk_div2_enable_136), 
            .CK(clk_div2), .Q(drive_current_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i8.GSR = "ENABLED";
    FD1P3AY drive_current_limit_i9 (.D(n16430), .SP(clk_div2_enable_136), 
            .CK(clk_div2), .Q(drive_current_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i9.GSR = "ENABLED";
    FD1P3AY drive_current_limit_i10 (.D(n16421), .SP(clk_div2_enable_136), 
            .CK(clk_div2), .Q(drive_current_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i10.GSR = "ENABLED";
    FD1P3AY drive_current_limit_i11 (.D(n16414), .SP(clk_div2_enable_136), 
            .CK(clk_div2), .Q(drive_current_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i11.GSR = "ENABLED";
    FD1P3AY drive_current_limit_i12 (.D(n16415), .SP(clk_div2_enable_136), 
            .CK(clk_div2), .Q(drive_current_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i12.GSR = "ENABLED";
    FD1P3AY drive_current_limit_i13 (.D(n16420), .SP(clk_div2_enable_136), 
            .CK(clk_div2), .Q(drive_current_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i13.GSR = "ENABLED";
    FD1P3AY drive_current_limit_i14 (.D(n16419), .SP(clk_div2_enable_136), 
            .CK(clk_div2), .Q(drive_current_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i14.GSR = "ENABLED";
    FD1P3AY drive_current_limit_i15 (.D(n16422), .SP(clk_div2_enable_136), 
            .CK(clk_div2), .Q(drive_current_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam drive_current_limit_i15.GSR = "ENABLED";
    FD1P3AX pwm_current_limit_i1 (.D(n16430), .SP(clk_div2_enable_143), 
            .CK(clk_div2), .Q(pwm_current_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i1.GSR = "ENABLED";
    FD1P3AX pwm_current_limit_i2 (.D(n16421), .SP(clk_div2_enable_143), 
            .CK(clk_div2), .Q(pwm_current_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i2.GSR = "ENABLED";
    FD1P3AX pwm_current_limit_i3 (.D(n16414), .SP(clk_div2_enable_143), 
            .CK(clk_div2), .Q(pwm_current_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i3.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i4 (.D(n16415), .SP(clk_div2_enable_143), 
            .CK(clk_div2), .Q(pwm_current_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i4.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i5 (.D(n16420), .SP(clk_div2_enable_143), 
            .CK(clk_div2), .Q(pwm_current_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i5.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i6 (.D(n16419), .SP(clk_div2_enable_143), 
            .CK(clk_div2), .Q(pwm_current_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i6.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i7 (.D(n16422), .SP(clk_div2_enable_143), 
            .CK(clk_div2), .Q(pwm_current_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i7.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i8 (.D(n16425), .SP(clk_div2_enable_151), 
            .CK(clk_div2), .Q(pwm_current_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i8.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i9 (.D(n16430), .SP(clk_div2_enable_151), 
            .CK(clk_div2), .Q(pwm_current_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i9.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i10 (.D(n16421), .SP(clk_div2_enable_151), 
            .CK(clk_div2), .Q(pwm_current_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i10.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i11 (.D(n16414), .SP(clk_div2_enable_151), 
            .CK(clk_div2), .Q(pwm_current_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i11.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i12 (.D(n16415), .SP(clk_div2_enable_151), 
            .CK(clk_div2), .Q(pwm_current_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i12.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i13 (.D(n16420), .SP(clk_div2_enable_151), 
            .CK(clk_div2), .Q(pwm_current_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i13.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i14 (.D(n16419), .SP(clk_div2_enable_151), 
            .CK(clk_div2), .Q(pwm_current_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i14.GSR = "ENABLED";
    FD1P3AY pwm_current_limit_i15 (.D(n16422), .SP(clk_div2_enable_151), 
            .CK(clk_div2), .Q(pwm_current_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_current_limit_i15.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i1 (.D(n16430), .SP(clk_div2_enable_158), .CK(clk_div2), 
            .Q(cw_current_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i1.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i2 (.D(n16421), .SP(clk_div2_enable_158), .CK(clk_div2), 
            .Q(cw_current_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i2.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i3 (.D(n16414), .SP(clk_div2_enable_158), .CK(clk_div2), 
            .Q(cw_current_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i3.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i4 (.D(n16415), .SP(clk_div2_enable_158), .CK(clk_div2), 
            .Q(cw_current_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i4.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i5 (.D(n16420), .SP(clk_div2_enable_158), .CK(clk_div2), 
            .Q(cw_current_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i5.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i6 (.D(n16419), .SP(clk_div2_enable_158), .CK(clk_div2), 
            .Q(cw_current_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i6.GSR = "ENABLED";
    FD1P3AY cw_current_limit_i7 (.D(n16422), .SP(clk_div2_enable_158), .CK(clk_div2), 
            .Q(cw_current_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i7.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i8 (.D(n16425), .SP(clk_div2_enable_166), .CK(clk_div2), 
            .Q(cw_current_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i8.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i9 (.D(n16430), .SP(clk_div2_enable_166), .CK(clk_div2), 
            .Q(cw_current_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i9.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i10 (.D(n16421), .SP(clk_div2_enable_166), 
            .CK(clk_div2), .Q(cw_current_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i10.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i11 (.D(n16414), .SP(clk_div2_enable_166), 
            .CK(clk_div2), .Q(cw_current_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i11.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i12 (.D(n16415), .SP(clk_div2_enable_166), 
            .CK(clk_div2), .Q(cw_current_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i12.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i13 (.D(n16420), .SP(clk_div2_enable_166), 
            .CK(clk_div2), .Q(cw_current_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i13.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i14 (.D(n16419), .SP(clk_div2_enable_166), 
            .CK(clk_div2), .Q(cw_current_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i14.GSR = "ENABLED";
    FD1P3AX cw_current_limit_i15 (.D(n16422), .SP(clk_div2_enable_166), 
            .CK(clk_div2), .Q(cw_current_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_current_limit_i15.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i1 (.D(n16430), .SP(clk_div2_enable_173), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i1.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i2 (.D(n16421), .SP(clk_div2_enable_173), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i2.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i3 (.D(n16414), .SP(clk_div2_enable_173), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i3.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i4 (.D(n16415), .SP(clk_div2_enable_173), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i4.GSR = "ENABLED";
    FD1P3AY pwm_mon_current_limit_i5 (.D(n16420), .SP(clk_div2_enable_173), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i5.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i6 (.D(n16419), .SP(clk_div2_enable_173), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i6.GSR = "ENABLED";
    FD1P3AY pwm_mon_current_limit_i7 (.D(n16422), .SP(clk_div2_enable_173), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i7.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i8 (.D(n16425), .SP(clk_div2_enable_181), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i8.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i9 (.D(n16430), .SP(clk_div2_enable_181), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i9.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i10 (.D(n16421), .SP(clk_div2_enable_181), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i10.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i11 (.D(n16414), .SP(clk_div2_enable_181), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i11.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i12 (.D(n16415), .SP(clk_div2_enable_181), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i12.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i13 (.D(n16420), .SP(clk_div2_enable_181), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i13.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i14 (.D(n16419), .SP(clk_div2_enable_181), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i14.GSR = "ENABLED";
    FD1P3AX pwm_mon_current_limit_i15 (.D(n16422), .SP(clk_div2_enable_181), 
            .CK(clk_div2), .Q(pwm_mon_current_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pwm_mon_current_limit_i15.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i1 (.D(n16430), .SP(clk_div2_enable_188), 
            .CK(clk_div2), .Q(cw_mon_current_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i1.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i2 (.D(n16421), .SP(clk_div2_enable_188), 
            .CK(clk_div2), .Q(cw_mon_current_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i2.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i3 (.D(n16414), .SP(clk_div2_enable_188), 
            .CK(clk_div2), .Q(cw_mon_current_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i3.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i4 (.D(n16415), .SP(clk_div2_enable_188), 
            .CK(clk_div2), .Q(cw_mon_current_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i4.GSR = "ENABLED";
    FD1P3AY cw_mon_current_limit_i5 (.D(n16420), .SP(clk_div2_enable_188), 
            .CK(clk_div2), .Q(cw_mon_current_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i5.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i6 (.D(n16419), .SP(clk_div2_enable_188), 
            .CK(clk_div2), .Q(cw_mon_current_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i6.GSR = "ENABLED";
    FD1P3AY cw_mon_current_limit_i7 (.D(n16422), .SP(clk_div2_enable_188), 
            .CK(clk_div2), .Q(cw_mon_current_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i7.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i8 (.D(n16425), .SP(clk_div2_enable_196), 
            .CK(clk_div2), .Q(cw_mon_current_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i8.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i9 (.D(n16430), .SP(clk_div2_enable_196), 
            .CK(clk_div2), .Q(cw_mon_current_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i9.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i10 (.D(n16421), .SP(clk_div2_enable_196), 
            .CK(clk_div2), .Q(cw_mon_current_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i10.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i11 (.D(n16414), .SP(clk_div2_enable_196), 
            .CK(clk_div2), .Q(cw_mon_current_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i11.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i12 (.D(n16415), .SP(clk_div2_enable_196), 
            .CK(clk_div2), .Q(cw_mon_current_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i12.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i13 (.D(n16420), .SP(clk_div2_enable_196), 
            .CK(clk_div2), .Q(cw_mon_current_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i13.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i14 (.D(n16419), .SP(clk_div2_enable_196), 
            .CK(clk_div2), .Q(cw_mon_current_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i14.GSR = "ENABLED";
    FD1P3AX cw_mon_current_limit_i15 (.D(n16422), .SP(clk_div2_enable_196), 
            .CK(clk_div2), .Q(cw_mon_current_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam cw_mon_current_limit_i15.GSR = "ENABLED";
    FD1P3AX static_control_i1 (.D(n16430), .SP(clk_div2_enable_203), .CK(clk_div2), 
            .Q(static_control[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i1.GSR = "ENABLED";
    FD1P3AX static_control_i2 (.D(n16421), .SP(clk_div2_enable_203), .CK(clk_div2), 
            .Q(\static_control[2] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i2.GSR = "ENABLED";
    FD1P3AX static_control_i3 (.D(n16414), .SP(clk_div2_enable_203), .CK(clk_div2), 
            .Q(\static_control[3] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i3.GSR = "ENABLED";
    FD1P3AX static_control_i4 (.D(n16415), .SP(clk_div2_enable_203), .CK(clk_div2), 
            .Q(\static_control[4] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i4.GSR = "ENABLED";
    FD1P3AX static_control_i5 (.D(n16420), .SP(clk_div2_enable_203), .CK(clk_div2), 
            .Q(\static_control[5] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i5.GSR = "ENABLED";
    FD1P3AX static_control_i6 (.D(n16419), .SP(clk_div2_enable_203), .CK(clk_div2), 
            .Q(\static_control[6] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i6.GSR = "ENABLED";
    FD1P3AX static_control_i7 (.D(n16422), .SP(clk_div2_enable_203), .CK(clk_div2), 
            .Q(\static_control[7] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i7.GSR = "ENABLED";
    FD1P3AX static_control_i8 (.D(n16425), .SP(clk_div2_enable_211), .CK(clk_div2), 
            .Q(\static_control[8] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i8.GSR = "ENABLED";
    FD1P3AX static_control_i9 (.D(n16430), .SP(clk_div2_enable_211), .CK(clk_div2), 
            .Q(\static_control[9] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i9.GSR = "ENABLED";
    FD1P3AX static_control_i10 (.D(n16421), .SP(clk_div2_enable_211), .CK(clk_div2), 
            .Q(static_control_adj_1770[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i10.GSR = "ENABLED";
    FD1P3AX static_control_i11 (.D(n16414), .SP(clk_div2_enable_211), .CK(clk_div2), 
            .Q(static_control_adj_1770[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i11.GSR = "ENABLED";
    FD1P3AX static_control_i12 (.D(n16415), .SP(clk_div2_enable_211), .CK(clk_div2), 
            .Q(static_control_adj_1770[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i12.GSR = "ENABLED";
    FD1P3AX static_control_i13 (.D(n16420), .SP(clk_div2_enable_211), .CK(clk_div2), 
            .Q(static_control_adj_1770[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i13.GSR = "ENABLED";
    FD1P3AX static_control_i14 (.D(n16419), .SP(clk_div2_enable_211), .CK(clk_div2), 
            .Q(static_control_adj_1770[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i14.GSR = "ENABLED";
    FD1P3AX static_control_i15 (.D(n16422), .SP(clk_div2_enable_211), .CK(clk_div2), 
            .Q(static_control_adj_1770[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam static_control_i15.GSR = "ENABLED";
    FD1P3AX dynamic_control_i1 (.D(dynamic_control_15__N_647[1]), .SP(clk_div2_enable_256), 
            .CK(clk_div2), .Q(dynamic_control[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i1.GSR = "ENABLED";
    FD1P3AX dynamic_control_i3 (.D(dynamic_control_15__N_647[3]), .SP(clk_div2_enable_256), 
            .CK(clk_div2), .Q(dynamic_control[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i3.GSR = "ENABLED";
    FD1P3AX dynamic_control_i7 (.D(dynamic_control_15__N_647[7]), .SP(clk_div2_enable_256), 
            .CK(clk_div2), .Q(dynamic_control[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i7.GSR = "ENABLED";
    FD1P3AX dynamic_control_i8 (.D(dynamic_control_15__N_647[8]), .SP(clk_div2_enable_222), 
            .CK(clk_div2), .Q(dynamic_control[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i8.GSR = "ENABLED";
    FD1P3AX dynamic_control_i9 (.D(dynamic_control_15__N_647[9]), .SP(clk_div2_enable_222), 
            .CK(clk_div2), .Q(dynamic_control[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i9.GSR = "ENABLED";
    FD1P3AX dynamic_control_i10 (.D(dynamic_control_15__N_647[10]), .SP(clk_div2_enable_222), 
            .CK(clk_div2), .Q(dynamic_control[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i10.GSR = "ENABLED";
    FD1P3AX dynamic_control_i11 (.D(dynamic_control_15__N_647[11]), .SP(clk_div2_enable_222), 
            .CK(clk_div2), .Q(dynamic_control[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i11.GSR = "ENABLED";
    FD1P3AX dynamic_control_i12 (.D(dynamic_control_15__N_647[12]), .SP(clk_div2_enable_222), 
            .CK(clk_div2), .Q(dynamic_control[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i12.GSR = "ENABLED";
    FD1P3AX dynamic_control_i13 (.D(dynamic_control_15__N_647[13]), .SP(clk_div2_enable_222), 
            .CK(clk_div2), .Q(dynamic_control[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i13.GSR = "ENABLED";
    FD1P3AX dynamic_control_i14 (.D(dynamic_control_15__N_647[14]), .SP(clk_div2_enable_222), 
            .CK(clk_div2), .Q(dynamic_control[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i14.GSR = "ENABLED";
    FD1P3AX dynamic_control_i15 (.D(dynamic_control_15__N_647[15]), .SP(clk_div2_enable_222), 
            .CK(clk_div2), .Q(dynamic_control[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i15.GSR = "ENABLED";
    FD1S3IX data_out_i1 (.D(n2569[1]), .CK(clk_div2), .CD(n5992), .Q(data_out[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(140[3] 176[6])
    defparam data_out_i1.GSR = "ENABLED";
    FD1S3IX data_out_i2 (.D(n2569[2]), .CK(clk_div2), .CD(n5992), .Q(data_out[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(140[3] 176[6])
    defparam data_out_i2.GSR = "ENABLED";
    FD1S3IX data_out_i3 (.D(n2569[3]), .CK(clk_div2), .CD(n5992), .Q(data_out[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(140[3] 176[6])
    defparam data_out_i3.GSR = "ENABLED";
    FD1S3IX data_out_i4 (.D(n2569[4]), .CK(clk_div2), .CD(n5992), .Q(data_out[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(140[3] 176[6])
    defparam data_out_i4.GSR = "ENABLED";
    FD1S3IX data_out_i5 (.D(n2569[5]), .CK(clk_div2), .CD(n5992), .Q(data_out[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(140[3] 176[6])
    defparam data_out_i5.GSR = "ENABLED";
    FD1S3IX data_out_i6 (.D(n2569[6]), .CK(clk_div2), .CD(n5992), .Q(data_out[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(140[3] 176[6])
    defparam data_out_i6.GSR = "ENABLED";
    FD1S3IX data_out_i7 (.D(n2569[7]), .CK(clk_div2), .CD(n5992), .Q(data_out[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(140[3] 176[6])
    defparam data_out_i7.GSR = "ENABLED";
    FD1S3BX addr_i_reg_i1_3414_3415_set (.D(n5813), .CK(data_vld_dly), .PD(addr_i_7__N_703), 
            .Q(n5960)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i1_3414_3415_set.GSR = "DISABLED";
    FD1P3AX addr_start_i1 (.D(n16430), .SP(clk_div2_N_18_enable_8), .CK(clk_div2_N_18), 
            .Q(addr_start[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(190[3] 201[6])
    defparam addr_start_i1.GSR = "ENABLED";
    FD1P3AX addr_start_i2 (.D(n16421), .SP(clk_div2_N_18_enable_8), .CK(clk_div2_N_18), 
            .Q(addr_start[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(190[3] 201[6])
    defparam addr_start_i2.GSR = "ENABLED";
    FD1P3AX addr_start_i3 (.D(n16414), .SP(clk_div2_N_18_enable_8), .CK(clk_div2_N_18), 
            .Q(addr_start[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(190[3] 201[6])
    defparam addr_start_i3.GSR = "ENABLED";
    FD1P3AX addr_start_i4 (.D(n16415), .SP(clk_div2_N_18_enable_8), .CK(clk_div2_N_18), 
            .Q(addr_start[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(190[3] 201[6])
    defparam addr_start_i4.GSR = "ENABLED";
    FD1P3AX addr_start_i5 (.D(n16420), .SP(clk_div2_N_18_enable_8), .CK(clk_div2_N_18), 
            .Q(addr_start[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(190[3] 201[6])
    defparam addr_start_i5.GSR = "ENABLED";
    FD1P3AX addr_start_i6 (.D(n16419), .SP(clk_div2_N_18_enable_8), .CK(clk_div2_N_18), 
            .Q(addr_start[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(190[3] 201[6])
    defparam addr_start_i6.GSR = "ENABLED";
    FD1P3AX addr_start_i7 (.D(n16422), .SP(clk_div2_N_18_enable_8), .CK(clk_div2_N_18), 
            .Q(addr_start[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(190[3] 201[6])
    defparam addr_start_i7.GSR = "ENABLED";
    FD1P3DX state_i1 (.D(state_1__N_741[1]), .SP(data_vld_dly_enable_4), 
            .CK(data_vld_dly), .CD(n16408), .Q(state[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam state_i1.GSR = "DISABLED";
    LUT4 mux_662_i6_3_lut (.A(pulse_width_lower_limit[5]), .B(n2306[5]), 
         .C(n16546), .Z(n2469[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_662_i6_3_lut.init = 16'hcaca;
    LUT4 addr_i_4__bdd_3_lut_13477 (.A(n16521), .B(pulse_width_upper_limit[3]), 
         .C(cw_current_limit[3]), .Z(n16189)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13477.init = 16'he4e4;
    LUT4 mux_662_i7_3_lut (.A(pulse_width_lower_limit[6]), .B(n2306[6]), 
         .C(n16546), .Z(n2469[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_662_i7_3_lut.init = 16'hcaca;
    PFUMX i3275 (.BLUT(addr_i_7__N_1072[3]), .ALUT(addr_i_7__N_687[3]), 
          .C0(n15502), .Z(n5821));
    LUT4 addr_i_4__bdd_3_lut_13481 (.A(n16521), .B(pulse_width_upper_limit[2]), 
         .C(cw_current_limit[2]), .Z(n16192)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13481.init = 16'he4e4;
    LUT4 addr_i_4__bdd_3_lut_13484 (.A(n16546), .B(\static_control[2] ), 
         .C(static_control_adj_1770[10]), .Z(n16193)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13484.init = 16'he4e4;
    FD1P3AX pulse_width_lower_limit_i1 (.D(n16430), .SP(clk_div2_enable_229), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i1.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i2 (.D(n16421), .SP(clk_div2_enable_229), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i2.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i3 (.D(n16414), .SP(clk_div2_enable_229), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i3.GSR = "ENABLED";
    FD1P3AY pulse_width_lower_limit_i4 (.D(n16415), .SP(clk_div2_enable_229), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i4.GSR = "ENABLED";
    FD1P3AY pulse_width_lower_limit_i5 (.D(n16420), .SP(clk_div2_enable_229), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i5.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i6 (.D(n16419), .SP(clk_div2_enable_229), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i6.GSR = "ENABLED";
    FD1P3AY pulse_width_lower_limit_i7 (.D(n16422), .SP(clk_div2_enable_229), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i7.GSR = "ENABLED";
    FD1P3AY pulse_width_lower_limit_i8 (.D(n16425), .SP(clk_div2_enable_237), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i8.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i9 (.D(n16430), .SP(clk_div2_enable_237), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i9.GSR = "ENABLED";
    FD1P3AY pulse_width_lower_limit_i10 (.D(n16421), .SP(clk_div2_enable_237), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[10])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i10.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i11 (.D(n16414), .SP(clk_div2_enable_237), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[11])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i11.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i12 (.D(n16415), .SP(clk_div2_enable_237), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[12])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i12.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i13 (.D(n16420), .SP(clk_div2_enable_237), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[13])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i13.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i14 (.D(n16419), .SP(clk_div2_enable_237), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[14])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i14.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i15 (.D(n16422), .SP(clk_div2_enable_237), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[15])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i15.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i16 (.D(n16425), .SP(clk_div2_enable_245), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[16])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i16.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i17 (.D(n16430), .SP(clk_div2_enable_245), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[17])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i17.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i18 (.D(n16421), .SP(clk_div2_enable_245), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[18])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i18.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i19 (.D(n16414), .SP(clk_div2_enable_245), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[19])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i19.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i20 (.D(n16415), .SP(clk_div2_enable_245), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[20])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i20.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i21 (.D(n16420), .SP(clk_div2_enable_245), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[21])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i21.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i22 (.D(n16419), .SP(clk_div2_enable_245), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[22])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i22.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i23 (.D(n16422), .SP(clk_div2_enable_245), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[23])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i23.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i24 (.D(n16425), .SP(clk_div2_enable_253), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[24])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i24.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i25 (.D(n16430), .SP(clk_div2_enable_253), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[25])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i25.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i26 (.D(n16421), .SP(clk_div2_enable_253), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[26])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i26.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i27 (.D(n16414), .SP(clk_div2_enable_253), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[27])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i27.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i28 (.D(n16415), .SP(clk_div2_enable_253), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[28])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i28.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i29 (.D(n16420), .SP(clk_div2_enable_253), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[29])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i29.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i30 (.D(n16419), .SP(clk_div2_enable_253), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[30])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i30.GSR = "ENABLED";
    FD1P3AX pulse_width_lower_limit_i31 (.D(n16422), .SP(clk_div2_enable_253), 
            .CK(clk_div2), .Q(pulse_width_lower_limit[31])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam pulse_width_lower_limit_i31.GSR = "ENABLED";
    FD1S1D i3417 (.D(n17327), .CK(addr_i_7__N_702), .CD(addr_i_7__N_730), 
           .Q(n5963));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3417.GSR = "DISABLED";
    FD1S1D i3421 (.D(n17327), .CK(addr_i_7__N_701), .CD(addr_i_7__N_727), 
           .Q(n5967));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3421.GSR = "DISABLED";
    FD1S1D i3425 (.D(n17327), .CK(addr_i_7__N_700), .CD(addr_i_7__N_724), 
           .Q(n5971));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3425.GSR = "DISABLED";
    FD1S1D i3429 (.D(n17327), .CK(addr_i_7__N_699), .CD(addr_i_7__N_721), 
           .Q(n5975));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3429.GSR = "DISABLED";
    FD1S1D i3433 (.D(n17327), .CK(addr_i_7__N_698), .CD(addr_i_7__N_718), 
           .Q(n5979));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3433.GSR = "DISABLED";
    FD1S1D i3437 (.D(n17327), .CK(addr_i_7__N_695), .CD(addr_i_7__N_705), 
           .Q(n5983));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3437.GSR = "DISABLED";
    LUT4 mux_662_i8_3_lut (.A(pulse_width_lower_limit[7]), .B(n2306[7]), 
         .C(n16546), .Z(n2469[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_662_i8_3_lut.init = 16'hcaca;
    FD1S3DX addr_i_reg_i0_3410_3411_reset (.D(n5747), .CK(data_vld_dly), 
            .CD(addr_i_7__N_736), .Q(n5957)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i0_3410_3411_reset.GSR = "DISABLED";
    LUT4 mux_647_i5_3_lut (.A(rate_lower_limit[4]), .B(cw_mon_current_limit[4]), 
         .C(n16521), .Z(n2414[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_647_i5_3_lut.init = 16'hcaca;
    LUT4 mux_643_i5_3_lut (.A(drive_current_limit[4]), .B(pwm_current_limit[4]), 
         .C(n16559), .Z(n2402[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_643_i5_3_lut.init = 16'hcaca;
    LUT4 addr_i_4__bdd_3_lut_13485 (.A(n16521), .B(pulse_width_upper_limit[1]), 
         .C(cw_current_limit[1]), .Z(n16195)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13485.init = 16'he4e4;
    LUT4 mux_647_i6_3_lut (.A(rate_lower_limit[5]), .B(cw_mon_current_limit[5]), 
         .C(n16521), .Z(n2414[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_647_i6_3_lut.init = 16'hcaca;
    FD1S3BX addr_i_reg_i0_3410_3411_set (.D(n5747), .CK(data_vld_dly), .PD(addr_i_7__N_704), 
            .Q(n5956)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i0_3410_3411_set.GSR = "DISABLED";
    FD1S1D i3409 (.D(n17327), .CK(addr_i_7__N_704), .CD(addr_i_7__N_736), 
           .Q(n5955));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3409.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_4_lut (.A(n16550), .B(n16546), .C(n79), .D(n16435), 
         .Z(n92)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0054;
    LUT4 i1_4_lut_4_lut_adj_171 (.A(n16550), .B(n16559), .C(n14620), .D(n16435), 
         .Z(n14621)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i1_4_lut_4_lut_adj_171.init = 16'h5040;
    LUT4 mux_643_i6_3_lut (.A(drive_current_limit[5]), .B(pwm_current_limit[5]), 
         .C(n16559), .Z(n2402[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_643_i6_3_lut.init = 16'hcaca;
    LUT4 addr_i_4__bdd_3_lut (.A(n16546), .B(static_control[1]), .C(\static_control[9] ), 
         .Z(n16196)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut.init = 16'he4e4;
    PFUMX i3201 (.BLUT(addr_i_7__N_1072[0]), .ALUT(addr_i_7__N_687[0]), 
          .C0(n15502), .Z(n5747));
    LUT4 mux_647_i7_3_lut (.A(rate_lower_limit[6]), .B(cw_mon_current_limit[6]), 
         .C(n16521), .Z(n2414[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_647_i7_3_lut.init = 16'hcaca;
    LUT4 mux_643_i7_3_lut (.A(drive_current_limit[6]), .B(pwm_current_limit[6]), 
         .C(n16559), .Z(n2402[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_643_i7_3_lut.init = 16'hcaca;
    LUT4 mux_647_i8_3_lut (.A(rate_lower_limit[7]), .B(cw_mon_current_limit[7]), 
         .C(n16521), .Z(n2414[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_647_i8_3_lut.init = 16'hcaca;
    L6MUX21 mux_678_i1 (.D0(n15508), .D1(n15505), .SD(n16546), .Z(n2549[0]));
    LUT4 i2_3_lut_rep_448 (.A(byte_cnt[1]), .B(state[0]), .C(state[1]), 
         .Z(data_vld_dly_enable_1)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i2_3_lut_rep_448.init = 16'hfbfb;
    LUT4 addr_i_4__bdd_3_lut_13386 (.A(n16521), .B(pulse_width_upper_limit[0]), 
         .C(cw_current_limit[0]), .Z(n16055)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13386.init = 16'he4e4;
    LUT4 i13292_2_lut_4_lut (.A(byte_cnt[1]), .B(state[0]), .C(state[1]), 
         .D(byte_cnt[0]), .Z(data_vld_dly_enable_3)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i13292_2_lut_4_lut.init = 16'h0004;
    LUT4 i13156_3_lut (.A(n15575), .B(n15576), .C(n16548), .Z(n15577)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13156_3_lut.init = 16'hcaca;
    L6MUX21 i12997 (.D0(n15503), .D1(n16368), .SD(n16435), .Z(n15505));
    LUT4 mux_643_i8_3_lut (.A(drive_current_limit[7]), .B(pwm_current_limit[7]), 
         .C(n16559), .Z(n2402[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_643_i8_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_3_lut (.A(byte_cnt[1]), .B(state[0]), .C(state[1]), 
         .Z(data_vld_dly_enable_4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i1_3_lut_3_lut.init = 16'hcbcb;
    L6MUX21 i13000 (.D0(n15506), .D1(n15507), .SD(n16548), .Z(n15508));
    L6MUX21 i13003 (.D0(n15509), .D1(n15510), .SD(n16435), .Z(n15511));
    LUT4 i10634_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(count[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(91[26:35])
    defparam i10634_3_lut_4_lut.init = 16'h7f80;
    LUT4 i10627_2_lut_3_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(91[26:35])
    defparam i10627_2_lut_3_lut.init = 16'h7878;
    L6MUX21 i13006 (.D0(n15512), .D1(n15513), .SD(n16435), .Z(n15514));
    LUT4 mux_635_i5_3_lut (.A(rate_upper_limit[4]), .B(rate_upper_limit[20]), 
         .C(n16559), .Z(n2378[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_635_i5_3_lut.init = 16'hcaca;
    LUT4 data_vld_I_0_274_2_lut_rep_321_4_lut (.A(n16523), .B(wr_done_reg2_i), 
         .C(wr_done_reg1_i), .D(\state_1__N_1054[0] ), .Z(n16389)) /* synthesis lut_function=(A (D)+!A !(B+!(C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam data_vld_I_0_274_2_lut_rep_321_4_lut.init = 16'hba00;
    LUT4 mux_631_i5_3_lut (.A(pulse_width_upper_limit[20]), .B(pwm_mon_current_limit[4]), 
         .C(n16521), .Z(n2366[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_631_i5_3_lut.init = 16'hcaca;
    LUT4 mux_635_i4_3_lut (.A(rate_upper_limit[3]), .B(rate_upper_limit[19]), 
         .C(n16559), .Z(n2378[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_635_i4_3_lut.init = 16'hcaca;
    LUT4 mux_631_i4_3_lut (.A(pulse_width_upper_limit[19]), .B(pwm_mon_current_limit[3]), 
         .C(n16521), .Z(n2366[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_631_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_320_3_lut (.A(n16521), .B(addr_i[5]), .C(n16435), 
         .Z(n16388)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_320_3_lut.init = 16'hfefe;
    LUT4 i12148_2_lut_3_lut_4_lut (.A(n16521), .B(addr_i[5]), .C(addr_i[7]), 
         .D(n16435), .Z(n14656)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12148_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_635_i3_3_lut (.A(rate_upper_limit[2]), .B(rate_upper_limit[18]), 
         .C(n16559), .Z(n2378[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_635_i3_3_lut.init = 16'hcaca;
    LUT4 mux_631_i3_3_lut (.A(pulse_width_upper_limit[18]), .B(pwm_mon_current_limit[2]), 
         .C(n16521), .Z(n2366[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_631_i3_3_lut.init = 16'hcaca;
    LUT4 mux_635_i2_3_lut (.A(rate_upper_limit[1]), .B(rate_upper_limit[17]), 
         .C(n16559), .Z(n2378[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_635_i2_3_lut.init = 16'hcaca;
    LUT4 mux_631_i2_3_lut (.A(pulse_width_upper_limit[17]), .B(pwm_mon_current_limit[1]), 
         .C(n16521), .Z(n2366[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_631_i2_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n16521), .B(addr_i[5]), .C(n16546), 
         .D(n16548), .Z(n27)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h1011;
    LUT4 mux_619_i8_3_lut (.A(rate_lower_limit[15]), .B(cw_mon_current_limit[15]), 
         .C(n16521), .Z(n2330[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_619_i8_3_lut.init = 16'hcaca;
    LUT4 mux_619_i7_3_lut (.A(rate_lower_limit[14]), .B(cw_mon_current_limit[14]), 
         .C(n16521), .Z(n2330[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_619_i7_3_lut.init = 16'hcaca;
    LUT4 mux_619_i6_3_lut (.A(rate_lower_limit[13]), .B(cw_mon_current_limit[13]), 
         .C(n16521), .Z(n2330[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_619_i6_3_lut.init = 16'hcaca;
    FD1S3DX addr_i_reg_i7_3438_3439_reset (.D(n5837), .CK(data_vld_dly), 
            .CD(addr_i_7__N_705), .Q(n5985)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i7_3438_3439_reset.GSR = "DISABLED";
    L6MUX21 i13009 (.D0(n15515), .D1(n16369), .SD(n16435), .Z(n15517));
    LUT4 i13256_3_lut_4_lut (.A(n2558), .B(n16383), .C(n29), .D(n16434), 
         .Z(n5992)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i13256_3_lut_4_lut.init = 16'h1101;
    LUT4 mux_619_i5_3_lut (.A(rate_lower_limit[12]), .B(cw_mon_current_limit[12]), 
         .C(n16521), .Z(n2330[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_619_i5_3_lut.init = 16'hcaca;
    CCU2D add_279_5 (.A0(n16435), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16521), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13113), 
          .COUT(n13114), .S0(addr_i_7__N_1056[3]), .S1(addr_i_7__N_1056[4]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(237[20:34])
    defparam add_279_5.INIT0 = 16'h5aaa;
    defparam add_279_5.INIT1 = 16'h5aaa;
    defparam add_279_5.INJECT1_0 = "NO";
    defparam add_279_5.INJECT1_1 = "NO";
    CCU2D add_279_3 (.A0(n16559), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16548), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13112), 
          .COUT(n13113), .S0(addr_i_7__N_1056[1]), .S1(addr_i_7__N_1056[2]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(237[20:34])
    defparam add_279_3.INIT0 = 16'h5aaa;
    defparam add_279_3.INIT1 = 16'h5aaa;
    defparam add_279_3.INJECT1_0 = "NO";
    defparam add_279_3.INJECT1_1 = "NO";
    LUT4 mux_619_i4_3_lut (.A(rate_lower_limit[11]), .B(cw_mon_current_limit[11]), 
         .C(n16521), .Z(n2330[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_619_i4_3_lut.init = 16'hcaca;
    L6MUX21 i13012 (.D0(n15518), .D1(n16370), .SD(n16435), .Z(n15520));
    LUT4 mux_603_i3_3_lut (.A(rate_upper_limit[10]), .B(system_reset_n_c_2), 
         .C(n16521), .Z(n2282[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_603_i3_3_lut.init = 16'hcaca;
    LUT4 mux_619_i3_3_lut (.A(rate_lower_limit[10]), .B(cw_mon_current_limit[10]), 
         .C(n16521), .Z(n2330[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_619_i3_3_lut.init = 16'hcaca;
    L6MUX21 i13015 (.D0(n15521), .D1(n16371), .SD(n16435), .Z(n15523));
    L6MUX21 i13018 (.D0(n15524), .D1(n16372), .SD(n16435), .Z(n15526));
    PFUMX i13038 (.BLUT(n2366[6]), .ALUT(n2378[6]), .C0(n16435), .Z(n15546));
    LUT4 mux_603_i2_3_lut (.A(rate_upper_limit[9]), .B(pwr_good_c_1), .C(n16521), 
         .Z(n2282[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_603_i2_3_lut.init = 16'hcaca;
    PFUMX i13041 (.BLUT(n2366[7]), .ALUT(n2378[7]), .C0(n16435), .Z(n15549));
    LUT4 i3428_3_lut_rep_453 (.A(n5973), .B(n5972), .C(n5971), .Z(n16521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3428_3_lut_rep_453.init = 16'hcaca;
    LUT4 mux_619_i2_3_lut (.A(rate_lower_limit[9]), .B(cw_mon_current_limit[9]), 
         .C(n16521), .Z(n2330[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_619_i2_3_lut.init = 16'hcaca;
    FD1P3IX count_923__i0 (.D(n21[0]), .SP(count_3__N_751), .CD(n10730), 
            .CK(clk_div2), .Q(count[0])) /* synthesis syn_preserve=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(91[26:35])
    defparam count_923__i0.GSR = "ENABLED";
    FD1S3IX data_out_i0 (.D(n2569[0]), .CK(clk_div2), .CD(n5992), .Q(data_out[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(140[3] 176[6])
    defparam data_out_i0.GSR = "ENABLED";
    FD1P3AX dynamic_control_i0 (.D(dynamic_control_15__N_647[0]), .SP(clk_div2_enable_256), 
            .CK(clk_div2), .Q(\dynamic_control[0] )) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam dynamic_control_i0.GSR = "ENABLED";
    L6MUX21 i13021 (.D0(n15527), .D1(n16373), .SD(n16435), .Z(n15529));
    LUT4 i2_2_lut_rep_341_4_lut (.A(n5973), .B(n5972), .C(n5971), .D(addr_i[5]), 
         .Z(n16409)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i2_2_lut_rep_341_4_lut.init = 16'h00ca;
    LUT4 i1_2_lut_rep_350_4_lut (.A(n5973), .B(n5972), .C(n5971), .D(addr_i[5]), 
         .Z(n16418)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i1_2_lut_rep_350_4_lut.init = 16'hffca;
    L6MUX21 i13024 (.D0(n15530), .D1(n15531), .SD(n16548), .Z(n15532));
    LUT4 i12154_2_lut_4_lut (.A(n5973), .B(n5972), .C(n5971), .D(n16548), 
         .Z(n14662)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i12154_2_lut_4_lut.init = 16'hffca;
    L6MUX21 i13027 (.D0(n15533), .D1(n15534), .SD(n16548), .Z(n15535));
    LUT4 i13258_2_lut_2_lut_3_lut (.A(n16546), .B(n16559), .C(n17), .Z(clk_div2_enable_229)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(94[7] 127[8])
    defparam i13258_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i13329_2_lut_2_lut_3_lut (.A(n16546), .B(n16559), .C(n5), .Z(clk_div2_enable_97)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(94[7] 127[8])
    defparam i13329_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 mux_635_i1_3_lut (.A(rate_upper_limit[0]), .B(rate_upper_limit[16]), 
         .C(n16559), .Z(n2378[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_635_i1_3_lut.init = 16'hcaca;
    LUT4 mux_631_i1_3_lut (.A(pulse_width_upper_limit[16]), .B(pwm_mon_current_limit[0]), 
         .C(n16521), .Z(n2366[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_631_i1_3_lut.init = 16'hcaca;
    L6MUX21 i13030 (.D0(n15536), .D1(n15537), .SD(n16548), .Z(n15538));
    LUT4 i1886_2_lut_4_lut (.A(n16396), .B(n5595), .C(n16387), .D(n16546), 
         .Z(clk_div2_enable_211)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1886_2_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_454 (.A(byte_cnt[0]), .B(byte_cnt[1]), .Z(n16522)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_454.init = 16'h2222;
    LUT4 mux_619_i1_3_lut (.A(rate_lower_limit[8]), .B(cw_mon_current_limit[8]), 
         .C(n16521), .Z(n2330[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_619_i1_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_328_4_lut (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(n16417), 
         .D(\state_1__N_1054[0] ), .Z(n16396)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_rep_328_4_lut.init = 16'h2000;
    LUT4 i13359_3_lut_rep_361_4_lut (.A(byte_cnt[0]), .B(byte_cnt[1]), .C(state[1]), 
         .D(state[0]), .Z(n16429)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;
    defparam i13359_3_lut_rep_361_4_lut.init = 16'hfd00;
    LUT4 mux_599_i1_3_lut (.A(cw_current_limit[8]), .B(pwm_mon_current_limit[8]), 
         .C(n16559), .Z(n2270[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_599_i1_3_lut.init = 16'hcaca;
    LUT4 mux_615_i1_3_lut (.A(drive_current_limit[8]), .B(pwm_current_limit[8]), 
         .C(n16559), .Z(n2318[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_615_i1_3_lut.init = 16'hcaca;
    LUT4 i13065_3_lut (.A(pulse_width_upper_limit[30]), .B(rate_upper_limit[30]), 
         .C(n16435), .Z(n15573)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13065_3_lut.init = 16'hcaca;
    LUT4 i1826_2_lut_3_lut_4_lut (.A(n16393), .B(n16409), .C(n16546), 
         .D(n16381), .Z(clk_div2_enable_181)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1826_2_lut_3_lut_4_lut.init = 16'h8000;
    CCU2D add_279_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16546), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n13112), 
          .S1(addr_i_7__N_1056[0]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(237[20:34])
    defparam add_279_1.INIT0 = 16'hF000;
    defparam add_279_1.INIT1 = 16'h5555;
    defparam add_279_1.INJECT1_0 = "NO";
    defparam add_279_1.INJECT1_1 = "NO";
    LUT4 i13064_3_lut (.A(pulse_width_lower_limit[30]), .B(rate_lower_limit[30]), 
         .C(n16435), .Z(n15572)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13064_3_lut.init = 16'hcaca;
    LUT4 mux_651_i1_3_lut (.A(pulse_width_lower_limit[16]), .B(rate_lower_limit[16]), 
         .C(n16435), .Z(n2426[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_651_i1_3_lut.init = 16'hcaca;
    PFUMX mux_672_i8 (.BLUT(n2426[7]), .ALUT(n15577), .C0(n16546), .Z(n2519[7]));
    LUT4 i1766_2_lut_3_lut_4_lut (.A(n16393), .B(n16409), .C(n16546), 
         .D(n16378), .Z(clk_div2_enable_151)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1766_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i13154_3_lut (.A(n15572), .B(n15573), .C(n16548), .Z(n15574)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13154_3_lut.init = 16'hcaca;
    LUT4 i13062_3_lut (.A(pulse_width_upper_limit[29]), .B(rate_upper_limit[29]), 
         .C(n16435), .Z(n15570)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13062_3_lut.init = 16'hcaca;
    PFUMX mux_672_i7 (.BLUT(n2426[6]), .ALUT(n15574), .C0(n16546), .Z(n2519[6]));
    LUT4 i1736_2_lut_3_lut_4_lut (.A(n16396), .B(n16410), .C(n16546), 
         .D(n16379), .Z(clk_div2_enable_136)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1736_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i13295_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(\state_1__N_1054[0] ), 
         .Z(state_1__N_741[1])) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i13295_2_lut_3_lut.init = 16'h0101;
    PFUMX mux_672_i6 (.BLUT(n2426[5]), .ALUT(n15571), .C0(n16546), .Z(n2519[5]));
    LUT4 i1856_2_lut_3_lut_4_lut (.A(n16409), .B(n16387), .C(n16546), 
         .D(n16380), .Z(clk_div2_enable_196)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1856_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1796_2_lut_3_lut_4_lut (.A(n16409), .B(n16387), .C(n16546), 
         .D(n16381), .Z(clk_div2_enable_166)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1796_2_lut_3_lut_4_lut.init = 16'h2000;
    PFUMX mux_672_i5 (.BLUT(n2426[4]), .ALUT(n15568), .C0(n16546), .Z(n2519[4]));
    CCU2D add_279_9 (.A0(addr_i[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13115), 
          .S0(addr_i_7__N_1056[7]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(237[20:34])
    defparam add_279_9.INIT0 = 16'h5aaa;
    defparam add_279_9.INIT1 = 16'h0000;
    defparam add_279_9.INJECT1_0 = "NO";
    defparam add_279_9.INJECT1_1 = "NO";
    FD1S3BX addr_i_reg_i7_3438_3439_set (.D(n5837), .CK(data_vld_dly), .PD(addr_i_7__N_695), 
            .Q(n5984)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i7_3438_3439_set.GSR = "DISABLED";
    LUT4 i3_4_lut_adj_172 (.A(n16396), .B(n16435), .C(n16398), .D(n16548), 
         .Z(n5)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_172.init = 16'h0800;
    FD1S3DX addr_i_reg_i6_3434_3435_reset (.D(n5833), .CK(data_vld_dly), 
            .CD(addr_i_7__N_718), .Q(n5981)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i6_3434_3435_reset.GSR = "DISABLED";
    FD1S3BX addr_i_reg_i6_3434_3435_set (.D(n5833), .CK(data_vld_dly), .PD(addr_i_7__N_698), 
            .Q(n5980)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i6_3434_3435_set.GSR = "DISABLED";
    FD1S3DX addr_i_reg_i5_3430_3431_reset (.D(n5829), .CK(data_vld_dly), 
            .CD(addr_i_7__N_721), .Q(n5977)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i5_3430_3431_reset.GSR = "DISABLED";
    FD1S3BX addr_i_reg_i5_3430_3431_set (.D(n5829), .CK(data_vld_dly), .PD(addr_i_7__N_699), 
            .Q(n5976)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i5_3430_3431_set.GSR = "DISABLED";
    FD1S3DX addr_i_reg_i4_3426_3427_reset (.D(n5825), .CK(data_vld_dly), 
            .CD(addr_i_7__N_724), .Q(n5973)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i4_3426_3427_reset.GSR = "DISABLED";
    FD1S3BX addr_i_reg_i4_3426_3427_set (.D(n5825), .CK(data_vld_dly), .PD(addr_i_7__N_700), 
            .Q(n5972)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i4_3426_3427_set.GSR = "DISABLED";
    FD1S3DX addr_i_reg_i3_3422_3423_reset (.D(n5821), .CK(data_vld_dly), 
            .CD(addr_i_7__N_727), .Q(n5969)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i3_3422_3423_reset.GSR = "DISABLED";
    FD1S3BX addr_i_reg_i3_3422_3423_set (.D(n5821), .CK(data_vld_dly), .PD(addr_i_7__N_701), 
            .Q(n5968)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i3_3422_3423_set.GSR = "DISABLED";
    FD1S3DX addr_i_reg_i2_3418_3419_reset (.D(n5817), .CK(data_vld_dly), 
            .CD(addr_i_7__N_730), .Q(n5965)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=96 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam addr_i_reg_i2_3418_3419_reset.GSR = "DISABLED";
    PFUMX mux_672_i4 (.BLUT(n2426[3]), .ALUT(n15565), .C0(n16546), .Z(n2519[3]));
    PFUMX mux_672_i3 (.BLUT(n2426[2]), .ALUT(n15562), .C0(n16546), .Z(n2519[2]));
    PFUMX mux_672_i2 (.BLUT(n2426[1]), .ALUT(n15559), .C0(n16546), .Z(n2519[1]));
    LUT4 i3416_3_lut_rep_491 (.A(n5961), .B(n5960), .C(n5959), .Z(n16559)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3416_3_lut_rep_491.init = 16'hcaca;
    LUT4 i1_3_lut_rep_312 (.A(n16396), .B(n16435), .C(n16548), .Z(n16380)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam i1_3_lut_rep_312.init = 16'h0808;
    LUT4 i1_3_lut_rep_313 (.A(n16435), .B(n16396), .C(n16548), .Z(n16381)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam i1_3_lut_rep_313.init = 16'h4040;
    LUT4 mux_651_i2_3_lut (.A(pulse_width_lower_limit[17]), .B(rate_lower_limit[17]), 
         .C(n16435), .Z(n2426[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_651_i2_3_lut.init = 16'hcaca;
    L6MUX21 i13033 (.D0(n15539), .D1(n15540), .SD(n16548), .Z(n15541));
    LUT4 mux_651_i3_3_lut (.A(pulse_width_lower_limit[18]), .B(rate_lower_limit[18]), 
         .C(n16435), .Z(n2426[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_651_i3_3_lut.init = 16'hcaca;
    LUT4 mux_651_i4_3_lut (.A(pulse_width_lower_limit[19]), .B(rate_lower_limit[19]), 
         .C(n16435), .Z(n2426[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_651_i4_3_lut.init = 16'hcaca;
    LUT4 mux_651_i5_3_lut (.A(pulse_width_lower_limit[20]), .B(rate_lower_limit[20]), 
         .C(n16435), .Z(n2426[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_651_i5_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_173 (.A(n16546), .B(n10730), .C(n3141), .Z(clk_div2_enable_222)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_173.init = 16'hecec;
    LUT4 mux_651_i6_3_lut (.A(pulse_width_lower_limit[21]), .B(rate_lower_limit[21]), 
         .C(n16435), .Z(n2426[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_651_i6_3_lut.init = 16'hcaca;
    L6MUX21 i13036 (.D0(n15542), .D1(n15543), .SD(n16548), .Z(n15544));
    LUT4 mux_651_i7_3_lut (.A(pulse_width_lower_limit[22]), .B(rate_lower_limit[22]), 
         .C(n16435), .Z(n2426[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_651_i7_3_lut.init = 16'hcaca;
    L6MUX21 i13039 (.D0(n15545), .D1(n15546), .SD(n16548), .Z(n15547));
    LUT4 mux_651_i8_3_lut (.A(pulse_width_lower_limit[23]), .B(rate_lower_limit[23]), 
         .C(n16435), .Z(n2426[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_651_i8_3_lut.init = 16'hcaca;
    L6MUX21 i13042 (.D0(n15548), .D1(n15549), .SD(n16548), .Z(n15550));
    LUT4 i13061_3_lut (.A(pulse_width_lower_limit[29]), .B(rate_lower_limit[29]), 
         .C(n16435), .Z(n15569)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13061_3_lut.init = 16'hcaca;
    LUT4 i13152_3_lut (.A(n15569), .B(n15570), .C(n16548), .Z(n15571)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13152_3_lut.init = 16'hcaca;
    LUT4 i13059_3_lut (.A(pulse_width_upper_limit[28]), .B(rate_upper_limit[28]), 
         .C(n16435), .Z(n15567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13059_3_lut.init = 16'hcaca;
    LUT4 i13058_3_lut (.A(pulse_width_lower_limit[28]), .B(rate_lower_limit[28]), 
         .C(n16435), .Z(n15566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13058_3_lut.init = 16'hcaca;
    LUT4 i13150_3_lut (.A(n15566), .B(n15567), .C(n16548), .Z(n15568)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13150_3_lut.init = 16'hcaca;
    LUT4 i13056_3_lut (.A(pulse_width_upper_limit[27]), .B(rate_upper_limit[27]), 
         .C(n16435), .Z(n15564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13056_3_lut.init = 16'hcaca;
    LUT4 i13055_3_lut (.A(pulse_width_lower_limit[27]), .B(rate_lower_limit[27]), 
         .C(n16435), .Z(n15563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13055_3_lut.init = 16'hcaca;
    LUT4 i13148_3_lut (.A(n15563), .B(n15564), .C(n16548), .Z(n15565)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13148_3_lut.init = 16'hcaca;
    LUT4 i13053_3_lut (.A(pulse_width_upper_limit[26]), .B(rate_upper_limit[26]), 
         .C(n16435), .Z(n15561)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13053_3_lut.init = 16'hcaca;
    LUT4 i13052_3_lut (.A(pulse_width_lower_limit[26]), .B(rate_lower_limit[26]), 
         .C(n16435), .Z(n15560)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13052_3_lut.init = 16'hcaca;
    LUT4 i13146_3_lut (.A(n15560), .B(n15561), .C(n16548), .Z(n15562)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13146_3_lut.init = 16'hcaca;
    LUT4 i13050_3_lut (.A(pulse_width_upper_limit[25]), .B(rate_upper_limit[25]), 
         .C(n16435), .Z(n15558)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13050_3_lut.init = 16'hcaca;
    LUT4 i13049_3_lut (.A(pulse_width_lower_limit[25]), .B(rate_lower_limit[25]), 
         .C(n16435), .Z(n15557)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13049_3_lut.init = 16'hcaca;
    LUT4 i13144_3_lut (.A(n15557), .B(n15558), .C(n16548), .Z(n15559)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13144_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_330_3_lut_4_lut (.A(addr_i[7]), .B(n16550), .C(addr_i[5]), 
         .D(n16521), .Z(n16398)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_330_3_lut_4_lut.init = 16'hfffe;
    LUT4 i13044_3_lut (.A(pulse_width_upper_limit[24]), .B(rate_upper_limit[24]), 
         .C(n16435), .Z(n15552)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13044_3_lut.init = 16'hcaca;
    LUT4 i13043_3_lut (.A(pulse_width_lower_limit[24]), .B(rate_lower_limit[24]), 
         .C(n16435), .Z(n15551)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13043_3_lut.init = 16'hcaca;
    LUT4 i13126_3_lut (.A(n15551), .B(n15552), .C(n16548), .Z(n15553)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13126_3_lut.init = 16'hcaca;
    LUT4 mux_635_i8_3_lut (.A(rate_upper_limit[7]), .B(rate_upper_limit[23]), 
         .C(n16559), .Z(n2378[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_635_i8_3_lut.init = 16'hcaca;
    LUT4 mux_631_i8_3_lut (.A(pulse_width_upper_limit[23]), .B(pwm_mon_current_limit[7]), 
         .C(n16521), .Z(n2366[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_631_i8_3_lut.init = 16'hcaca;
    LUT4 mux_635_i7_3_lut (.A(rate_upper_limit[6]), .B(rate_upper_limit[22]), 
         .C(n16559), .Z(n2378[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_635_i7_3_lut.init = 16'hcaca;
    LUT4 i8984_2_lut_rep_319_3_lut (.A(addr_i[7]), .B(n16550), .C(n16559), 
         .Z(n16387)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8984_2_lut_rep_319_3_lut.init = 16'hfefe;
    LUT4 mux_631_i7_3_lut (.A(pulse_width_upper_limit[22]), .B(pwm_mon_current_limit[6]), 
         .C(n16521), .Z(n2366[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_631_i7_3_lut.init = 16'hcaca;
    LUT4 i4_2_lut_rep_325_3_lut (.A(addr_i[7]), .B(n16550), .C(n16559), 
         .Z(n16393)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i4_2_lut_rep_325_3_lut.init = 16'h1010;
    LUT4 i3424_3_lut_rep_367 (.A(n5969), .B(n5968), .C(n5967), .Z(n16435)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3424_3_lut_rep_367.init = 16'hcaca;
    LUT4 i2_3_lut (.A(n16417), .B(data_vld_cnt), .C(\state_1__N_1054[0] ), 
         .Z(clk_div2_N_18_enable_8)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(196[9] 200[8])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i8993_2_lut_rep_342_4_lut (.A(n5969), .B(n5968), .C(n5967), .D(n16548), 
         .Z(n16410)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i8993_2_lut_rep_342_4_lut.init = 16'hffca;
    LUT4 i1_4_lut (.A(\dynamic_control[0] ), .B(n27_adj_1767), .C(n25_adj_1768), 
         .D(n26), .Z(count_3__N_751)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(dynamic_control[15]), .B(n24_adj_1769), .C(dynamic_control[6]), 
         .D(dynamic_control[1]), .Z(n27_adj_1767)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i3412_3_lut_rep_478 (.A(n5957), .B(n5956), .C(n5955), .Z(n16546)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3412_3_lut_rep_478.init = 16'hcaca;
    LUT4 i10_4_lut (.A(dynamic_control[5]), .B(dynamic_control[12]), .C(dynamic_control[10]), 
         .D(dynamic_control[2]), .Z(n25_adj_1768)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_356_4_lut (.A(n5957), .B(n5956), .C(n5955), .D(n16559), 
         .Z(n16424)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i1_2_lut_rep_356_4_lut.init = 16'hffca;
    LUT4 i11_4_lut (.A(dynamic_control[7]), .B(dynamic_control[14]), .C(dynamic_control[11]), 
         .D(dynamic_control[9]), .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n5957), .B(n5956), .C(n5955), .D(n16548), 
         .Z(n14620)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i1_2_lut_4_lut.init = 16'h3500;
    LUT4 i9_4_lut (.A(dynamic_control[4]), .B(dynamic_control[13]), .C(dynamic_control[8]), 
         .D(dynamic_control[3]), .Z(n24_adj_1769)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_174 (.A(count_3__N_751), .B(count[3]), .C(count[2]), 
         .D(count[1]), .Z(n10730)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_174.init = 16'haaa8;
    LUT4 i1_2_lut_rep_336_4_lut (.A(n5957), .B(n5956), .C(n5955), .D(n16548), 
         .Z(n16404)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i1_2_lut_rep_336_4_lut.init = 16'hcaff;
    PFUMX mux_672_i1 (.BLUT(n2426[0]), .ALUT(n15553), .C0(n16546), .Z(n2519[0]));
    LUT4 i1_2_lut_rep_344_4_lut (.A(n5957), .B(n5956), .C(n5955), .D(n16559), 
         .Z(n16412)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i1_2_lut_rep_344_4_lut.init = 16'hcaff;
    LUT4 i4_2_lut_rep_343_4_lut (.A(n5957), .B(n5956), .C(n5955), .D(n16559), 
         .Z(n16411)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i4_2_lut_rep_343_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_rep_345_4_lut (.A(n5957), .B(n5956), .C(n5955), .D(n16559), 
         .Z(n16413)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i1_2_lut_rep_345_4_lut.init = 16'h00ca;
    LUT4 i2_3_lut_4_lut_adj_175 (.A(n16559), .B(n16434), .C(n16435), .D(n16404), 
         .Z(n86)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_175.init = 16'h1000;
    LUT4 i3420_3_lut_rep_480 (.A(n5965), .B(n5964), .C(n5963), .Z(n16548)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3420_3_lut_rep_480.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_176 (.A(n5965), .B(n5964), .C(n5963), .D(n16559), 
         .Z(n79)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i1_2_lut_4_lut_adj_176.init = 16'hff35;
    LUT4 i2_3_lut_rep_315_4_lut (.A(n16559), .B(n16434), .C(n16404), .D(n16388), 
         .Z(n16383)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_rep_315_4_lut.init = 16'h0010;
    LUT4 mux_680_i1_3_lut (.A(n2519[0]), .B(n2549[0]), .C(n2558), .Z(n2559[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_680_i1_3_lut.init = 16'hcaca;
    PFUMX i12995 (.BLUT(n2318[0]), .ALUT(n2270[0]), .C0(n16548), .Z(n15503));
    LUT4 i3436_3_lut_rep_482 (.A(n5981), .B(n5980), .C(n5979), .Z(n16550)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i3436_3_lut_rep_482.init = 16'hcaca;
    LUT4 i13322_2_lut_3_lut_3_lut_4_lut (.A(n16434), .B(n16418), .C(n16381), 
         .D(n16412), .Z(clk_div2_enable_51)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i13322_2_lut_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i8972_2_lut_rep_366_4_lut (.A(n5981), .B(n5980), .C(n5979), .D(addr_i[7]), 
         .Z(n16434)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i8972_2_lut_rep_366_4_lut.init = 16'hffca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n16434), .B(n16418), .C(n16411), .D(n16380), 
         .Z(clk_div2_enable_90)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_177 (.A(n16434), .B(n16418), .C(n16413), 
         .D(n16380), .Z(clk_div2_enable_74)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_177.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_178 (.A(n16434), .B(n16418), .C(n16411), 
         .D(n16381), .Z(clk_div2_enable_59)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_178.init = 16'h1000;
    PFUMX i12999 (.BLUT(n2366[0]), .ALUT(n2378[0]), .C0(n16435), .Z(n15507));
    LUT4 i13070_3_lut_4_lut (.A(n16417), .B(\state_1__N_1054[0] ), .C(data_vld_cnt), 
         .D(n16518), .Z(data_vld_cnt_N_1086)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(66[19:39])
    defparam i13070_3_lut_4_lut.init = 16'h7f70;
    LUT4 i1_2_lut_3_lut_4_lut_adj_179 (.A(n16434), .B(n16418), .C(n16413), 
         .D(n16381), .Z(clk_div2_enable_43)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_179.init = 16'h1000;
    PFUMX i13002 (.BLUT(n2330[1]), .ALUT(n2282[1]), .C0(n16548), .Z(n15510));
    PFUMX i13005 (.BLUT(n2330[2]), .ALUT(n2282[2]), .C0(n16548), .Z(n15513));
    LUT4 i13323_2_lut_4_lut (.A(n5961), .B(n5960), .C(n5959), .D(n2558), 
         .Z(n15490)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i13323_2_lut_4_lut.init = 16'hffca;
    PFUMX i13023 (.BLUT(n2366[1]), .ALUT(n2378[1]), .C0(n16435), .Z(n15531));
    PFUMX i13026 (.BLUT(n2366[2]), .ALUT(n2378[2]), .C0(n16435), .Z(n15534));
    LUT4 state_1__I_0_272_Mux_0_i3_3_lut (.A(addr_i_7__N_1056[0]), .B(n16546), 
         .C(n16429), .Z(addr_i_7__N_687[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam state_1__I_0_272_Mux_0_i3_3_lut.init = 16'hcaca;
    PFUMX i13029 (.BLUT(n2366[3]), .ALUT(n2378[3]), .C0(n16435), .Z(n15537));
    LUT4 mux_680_i2_3_lut (.A(n2519[1]), .B(n2549[1]), .C(n2558), .Z(n2559[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_680_i2_3_lut.init = 16'hcaca;
    PFUMX i13032 (.BLUT(n2366[4]), .ALUT(n2378[4]), .C0(n16435), .Z(n15540));
    LUT4 mux_680_i3_3_lut (.A(n2519[2]), .B(n2549[2]), .C(n2558), .Z(n2559[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_680_i3_3_lut.init = 16'hcaca;
    PFUMX i13040 (.BLUT(n2402[7]), .ALUT(n2414[7]), .C0(n16435), .Z(n15548));
    LUT4 mux_680_i4_3_lut (.A(n2519[3]), .B(n2549[3]), .C(n2558), .Z(n2559[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_680_i4_3_lut.init = 16'hcaca;
    LUT4 i13334_2_lut_3_lut_4_lut_4_lut (.A(n16424), .B(n16381), .C(n16418), 
         .D(n16434), .Z(clk_div2_enable_35)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(94[7] 127[8])
    defparam i13334_2_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 mux_680_i8_3_lut (.A(n2519[7]), .B(n2549[7]), .C(n2558), .Z(n2559[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_680_i8_3_lut.init = 16'hcaca;
    LUT4 mux_680_i7_3_lut (.A(n2519[6]), .B(n2549[6]), .C(n2558), .Z(n2559[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_680_i7_3_lut.init = 16'hcaca;
    LUT4 state_1__I_0_272_Mux_3_i3_3_lut (.A(addr_i_7__N_1056[3]), .B(n16435), 
         .C(n16429), .Z(addr_i_7__N_687[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam state_1__I_0_272_Mux_3_i3_3_lut.init = 16'hcaca;
    LUT4 mux_680_i6_3_lut (.A(n2519[5]), .B(n2549[5]), .C(n2558), .Z(n2559[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_680_i6_3_lut.init = 16'hcaca;
    PFUMX i13486 (.BLUT(n16196), .ALUT(n16195), .C0(n16548), .Z(n16197));
    PFUMX i13037 (.BLUT(n2402[6]), .ALUT(n2414[6]), .C0(n16435), .Z(n15545));
    LUT4 mux_680_i5_3_lut (.A(n2519[4]), .B(n2549[4]), .C(n2558), .Z(n2559[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_680_i5_3_lut.init = 16'hcaca;
    PFUMX i13034 (.BLUT(n2402[5]), .ALUT(n2414[5]), .C0(n16435), .Z(n15542));
    LUT4 i9076_3_lut (.A(\state_1__N_1054[0] ), .B(state[1]), .C(state[0]), 
         .Z(state_1__N_741[0])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i9076_3_lut.init = 16'h3232;
    LUT4 state_1__I_0_272_Mux_4_i3_3_lut (.A(addr_i_7__N_1056[4]), .B(n16521), 
         .C(n16429), .Z(addr_i_7__N_687[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam state_1__I_0_272_Mux_4_i3_3_lut.init = 16'hcaca;
    PFUMX i13482 (.BLUT(n16193), .ALUT(n16192), .C0(n16548), .Z(n16194));
    PFUMX i13031 (.BLUT(n2402[4]), .ALUT(n2414[4]), .C0(n16435), .Z(n15539));
    LUT4 mux_647_i1_3_lut (.A(rate_lower_limit[0]), .B(cw_mon_current_limit[0]), 
         .C(n16521), .Z(n2414[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_647_i1_3_lut.init = 16'hcaca;
    PFUMX i13478 (.BLUT(n16190), .ALUT(n16189), .C0(n16548), .Z(n16191));
    LUT4 state_1__I_0_272_Mux_2_i3_3_lut (.A(addr_i_7__N_1056[2]), .B(n16548), 
         .C(n16429), .Z(addr_i_7__N_687[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam state_1__I_0_272_Mux_2_i3_3_lut.init = 16'hcaca;
    PFUMX i13473 (.BLUT(n16185), .ALUT(n16184), .C0(n16548), .Z(n16186));
    LUT4 state_1__I_0_272_Mux_6_i3_3_lut (.A(addr_i_7__N_1056[6]), .B(n16550), 
         .C(n16429), .Z(addr_i_7__N_687[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam state_1__I_0_272_Mux_6_i3_3_lut.init = 16'hcaca;
    LUT4 state_1__I_0_272_Mux_5_i3_3_lut (.A(addr_i_7__N_1056[5]), .B(addr_i[5]), 
         .C(n16429), .Z(addr_i_7__N_687[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam state_1__I_0_272_Mux_5_i3_3_lut.init = 16'hcaca;
    LUT4 state_1__I_0_272_Mux_7_i3_3_lut (.A(addr_i_7__N_1056[7]), .B(addr_i[7]), 
         .C(n16429), .Z(addr_i_7__N_687[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam state_1__I_0_272_Mux_7_i3_3_lut.init = 16'hcaca;
    LUT4 i13230_3_lut (.A(n16057), .B(n2469[0]), .C(n16383), .Z(n2529[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13230_3_lut.init = 16'hcaca;
    LUT4 i10618_1_lut (.A(count[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(91[26:35])
    defparam i10618_1_lut.init = 16'h5555;
    LUT4 i13233_3_lut (.A(n16197), .B(n2469[1]), .C(n16383), .Z(n2529[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13233_3_lut.init = 16'hcaca;
    PFUMX i13035 (.BLUT(n2366[5]), .ALUT(n2378[5]), .C0(n16435), .Z(n15543));
    PFUMX i13028 (.BLUT(n2402[3]), .ALUT(n2414[3]), .C0(n16435), .Z(n15536));
    LUT4 i2_3_lut_adj_180 (.A(state[0]), .B(byte_cnt[1]), .C(state[1]), 
         .Z(data_vld_dly_enable_2)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam i2_3_lut_adj_180.init = 16'h0202;
    LUT4 i13235_3_lut (.A(n16194), .B(n2469[2]), .C(n16383), .Z(n2529[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13235_3_lut.init = 16'hcaca;
    LUT4 rate_upper_limit_15__bdd_4_lut_4_lut (.A(n16521), .B(n16548), .C(n2330[7]), 
         .D(rate_upper_limit[15]), .Z(n16373)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;
    defparam rate_upper_limit_15__bdd_4_lut_4_lut.init = 16'h7430;
    LUT4 i13237_3_lut (.A(n16191), .B(n2469[3]), .C(n16383), .Z(n2529[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13237_3_lut.init = 16'hcaca;
    LUT4 rate_upper_limit_14__bdd_4_lut_4_lut (.A(n16521), .B(n16548), .C(n2330[6]), 
         .D(rate_upper_limit[14]), .Z(n16372)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;
    defparam rate_upper_limit_14__bdd_4_lut_4_lut.init = 16'h7430;
    PFUMX i13025 (.BLUT(n2402[2]), .ALUT(n2414[2]), .C0(n16435), .Z(n15533));
    LUT4 i13239_3_lut (.A(n16186), .B(n2469[4]), .C(n16383), .Z(n2529[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13239_3_lut.init = 16'hcaca;
    LUT4 rate_upper_limit_11__bdd_4_lut_4_lut (.A(n16521), .B(n16548), .C(n2330[3]), 
         .D(rate_upper_limit[11]), .Z(n16369)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;
    defparam rate_upper_limit_11__bdd_4_lut_4_lut.init = 16'h7430;
    LUT4 i13241_3_lut (.A(n16180), .B(n2469[5]), .C(n16383), .Z(n2529[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13241_3_lut.init = 16'hcaca;
    PFUMX i13467 (.BLUT(n16179), .ALUT(n16178), .C0(n16548), .Z(n16180));
    PFUMX i13022 (.BLUT(n2402[1]), .ALUT(n2414[1]), .C0(n16435), .Z(n15530));
    LUT4 i13243_3_lut (.A(n16177), .B(n2469[6]), .C(n16383), .Z(n2529[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13243_3_lut.init = 16'hcaca;
    LUT4 i13245_3_lut (.A(n16174), .B(n2469[7]), .C(n16383), .Z(n2529[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13245_3_lut.init = 16'hcaca;
    PFUMX i13387 (.BLUT(n16056), .ALUT(n16055), .C0(n16548), .Z(n16057));
    LUT4 rate_upper_limit_8__bdd_4_lut_4_lut (.A(n16521), .B(n16548), .C(n2330[0]), 
         .D(rate_upper_limit[8]), .Z(n16368)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;
    defparam rate_upper_limit_8__bdd_4_lut_4_lut.init = 16'h7430;
    PFUMX i13019 (.BLUT(n2318[7]), .ALUT(n2270[7]), .C0(n16548), .Z(n15527));
    LUT4 state_1__I_0_272_Mux_1_i3_3_lut (.A(addr_i_7__N_1056[1]), .B(n16559), 
         .C(n16429), .Z(addr_i_7__N_687[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(215[7] 246[9])
    defparam state_1__I_0_272_Mux_1_i3_3_lut.init = 16'hcaca;
    LUT4 rate_upper_limit_13__bdd_4_lut_4_lut (.A(n16521), .B(n16548), .C(n2330[5]), 
         .D(rate_upper_limit[13]), .Z(n16371)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;
    defparam rate_upper_limit_13__bdd_4_lut_4_lut.init = 16'h7430;
    LUT4 i10620_2_lut (.A(count[1]), .B(count[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(91[26:35])
    defparam i10620_2_lut.init = 16'h6666;
    PFUMX i13016 (.BLUT(n2318[6]), .ALUT(n2270[6]), .C0(n16548), .Z(n15524));
    LUT4 rate_upper_limit_12__bdd_4_lut_4_lut (.A(n16521), .B(n16548), .C(n2330[4]), 
         .D(rate_upper_limit[12]), .Z(n16370)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;
    defparam rate_upper_limit_12__bdd_4_lut_4_lut.init = 16'h7430;
    LUT4 i4_4_lut (.A(n16396), .B(n16548), .C(n16550), .D(n14656), .Z(n17)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0002;
    PFUMX i13013 (.BLUT(n2318[5]), .ALUT(n2270[5]), .C0(n16548), .Z(n15521));
    PFUMX i13010 (.BLUT(n2318[4]), .ALUT(n2270[4]), .C0(n16548), .Z(n15518));
    LUT4 mux_611_i8_3_lut (.A(pulse_width_lower_limit[15]), .B(pulse_width_upper_limit[15]), 
         .C(n16548), .Z(n2306[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_611_i8_3_lut.init = 16'hcaca;
    LUT4 mux_611_i7_3_lut (.A(pulse_width_lower_limit[14]), .B(pulse_width_upper_limit[14]), 
         .C(n16548), .Z(n2306[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_611_i7_3_lut.init = 16'hcaca;
    LUT4 mux_611_i6_3_lut (.A(pulse_width_lower_limit[13]), .B(pulse_width_upper_limit[13]), 
         .C(n16548), .Z(n2306[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_611_i6_3_lut.init = 16'hcaca;
    LUT4 mux_611_i5_3_lut (.A(pulse_width_lower_limit[12]), .B(pulse_width_upper_limit[12]), 
         .C(n16548), .Z(n2306[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_611_i5_3_lut.init = 16'hcaca;
    PFUMX i13463 (.BLUT(n16176), .ALUT(n16175), .C0(n16548), .Z(n16177));
    PFUMX i13007 (.BLUT(n2318[3]), .ALUT(n2270[3]), .C0(n16548), .Z(n15515));
    LUT4 mux_611_i4_3_lut (.A(pulse_width_lower_limit[11]), .B(pulse_width_upper_limit[11]), 
         .C(n16548), .Z(n2306[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_611_i4_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_181 (.A(addr_i[5]), .B(n86), .C(addr_i[7]), .D(n96), 
         .Z(n2558)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_181.init = 16'h4544;
    LUT4 i1_2_lut_rep_310_4_lut (.A(n16522), .B(\state_1__N_1054[0] ), .C(n16417), 
         .D(n16410), .Z(n16378)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/registers.v(86[11] 128[7])
    defparam i1_2_lut_rep_310_4_lut.init = 16'h0080;
    LUT4 addr_i_4__bdd_3_lut_13461 (.A(n16546), .B(\static_control[7] ), 
         .C(static_control_adj_1770[15]), .Z(n16173)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13461.init = 16'he4e4;
    LUT4 mux_611_i3_3_lut (.A(pulse_width_lower_limit[10]), .B(pulse_width_upper_limit[10]), 
         .C(n16548), .Z(n2306[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_611_i3_3_lut.init = 16'hcaca;
    PFUMX i13004 (.BLUT(n2318[2]), .ALUT(n2270[2]), .C0(n16548), .Z(n15512));
    LUT4 mux_611_i2_3_lut (.A(pulse_width_lower_limit[9]), .B(pulse_width_upper_limit[9]), 
         .C(n16548), .Z(n2306[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_611_i2_3_lut.init = 16'hcaca;
    LUT4 mux_611_i1_3_lut (.A(pulse_width_lower_limit[8]), .B(pulse_width_upper_limit[8]), 
         .C(n16548), .Z(n2306[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_611_i1_3_lut.init = 16'hcaca;
    LUT4 addr_i_4__bdd_3_lut_13458 (.A(n16521), .B(pulse_width_upper_limit[7]), 
         .C(cw_current_limit[7]), .Z(n16172)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam addr_i_4__bdd_3_lut_13458.init = 16'he4e4;
    PFUMX i13001 (.BLUT(n2318[1]), .ALUT(n2270[1]), .C0(n16548), .Z(n15509));
    PFUMX i12998 (.BLUT(n2402[0]), .ALUT(n2414[0]), .C0(n16435), .Z(n15506));
    PFUMX i13459 (.BLUT(n16173), .ALUT(n16172), .C0(n16548), .Z(n16174));
    
endmodule
//
// Verilog Description of module i2cslave_controller_top
//

module i2cslave_controller_top (clk_div2, \next_state_i_3__N_181[0] , stop_detect_i, 
            start_detect_i_N_352, d_ff, n16517, reset_n, \state_1__N_1054[0] , 
            data_out, reset_bus_i, count_i_3__N_145, wr_done_reg1_i, 
            wr_done_reg2_i, n17327, n13409, n11577, n16523, addr_start, 
            addr_i_7__N_1072, n16518, addr_i_7__N_702, addr_i_7__N_703, 
            addr_i_7__N_733, addr_i_7__N_730, n3141, n16546, dynamic_control_15__N_647, 
            addr_i_7__N_701, addr_i_7__N_727, addr_i_7__N_700, addr_i_7__N_724, 
            addr_i_7__N_699, addr_i_7__N_721, addr_i_7__N_698, addr_i_7__N_718, 
            addr_i_7__N_695, addr_i_7__N_705, addr_i_7__N_736, addr_i_7__N_704, 
            n16415, n16414, n16421, n16420, n16419, n16417, n16422, 
            n16425, n16430, n4, n13407, n13408, sda_out, scl_out) /* synthesis syn_module_defined=1 */ ;
    input clk_div2;
    output \next_state_i_3__N_181[0] ;
    output stop_detect_i;
    input start_detect_i_N_352;
    output d_ff;
    input n16517;
    input reset_n;
    output \state_1__N_1054[0] ;
    input [7:0]data_out;
    output reset_bus_i;
    output count_i_3__N_145;
    output wr_done_reg1_i;
    output wr_done_reg2_i;
    input n17327;
    input n13409;
    output n11577;
    output n16523;
    input [7:0]addr_start;
    output [7:0]addr_i_7__N_1072;
    output n16518;
    output addr_i_7__N_702;
    output addr_i_7__N_703;
    output addr_i_7__N_733;
    output addr_i_7__N_730;
    input n3141;
    input n16546;
    output [15:0]dynamic_control_15__N_647;
    output addr_i_7__N_701;
    output addr_i_7__N_727;
    output addr_i_7__N_700;
    output addr_i_7__N_724;
    output addr_i_7__N_699;
    output addr_i_7__N_721;
    output addr_i_7__N_698;
    output addr_i_7__N_718;
    output addr_i_7__N_695;
    output addr_i_7__N_705;
    output addr_i_7__N_736;
    output addr_i_7__N_704;
    output n16415;
    output n16414;
    output n16421;
    output n16420;
    output n16419;
    output n16417;
    output n16422;
    output n16425;
    output n16430;
    input n4;
    output n13407;
    output n13408;
    input sda_out;
    input scl_out;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    wire out_n__inv /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(51[9:14])
    wire out_n /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_slave_top/i2cslave_controller_top/filter_scl_inst/out_n */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(51[9:14])
    
    wire addr_ack1_i;
    wire [5:0]n2945;
    
    wire i_sda, wr_done_i_N_430, rw_mode_i;
    
    i2cslave_controller i2cslave_controller_u1 (.clk_div2(clk_div2), .\next_state_i_3__N_181[0] (\next_state_i_3__N_181[0] ), 
            .stop_detect_i(stop_detect_i), .start_detect_i_N_352(start_detect_i_N_352), 
            .out_n__inv(out_n__inv), .d_ff(d_ff), .out_n(out_n), .n16517(n16517), 
            .reset_n(reset_n), .\state_1__N_1054[0] (\state_1__N_1054[0] ), 
            .data_out({data_out}), .reset_bus_i(reset_bus_i), .addr_ack1_i(addr_ack1_i), 
            .count_i_3__N_145(count_i_3__N_145), .count_i_3__N_141(n2945[4]), 
            .wr_done_reg1_i(wr_done_reg1_i), .wr_done_reg2_i(wr_done_reg2_i), 
            .i_sda(i_sda), .wr_done_i_N_430(wr_done_i_N_430), .n17327(n17327), 
            .rw_mode_i(rw_mode_i), .n13409(n13409), .n11577(n11577), .n16523(n16523), 
            .addr_start({addr_start}), .addr_i_7__N_1072({addr_i_7__N_1072}), 
            .n16518(n16518), .addr_i_7__N_702(addr_i_7__N_702), .addr_i_7__N_703(addr_i_7__N_703), 
            .addr_i_7__N_733(addr_i_7__N_733), .addr_i_7__N_730(addr_i_7__N_730), 
            .n3141(n3141), .n16546(n16546), .dynamic_control_15__N_647({dynamic_control_15__N_647}), 
            .addr_i_7__N_701(addr_i_7__N_701), .addr_i_7__N_727(addr_i_7__N_727), 
            .addr_i_7__N_700(addr_i_7__N_700), .addr_i_7__N_724(addr_i_7__N_724), 
            .addr_i_7__N_699(addr_i_7__N_699), .addr_i_7__N_721(addr_i_7__N_721), 
            .addr_i_7__N_698(addr_i_7__N_698), .addr_i_7__N_718(addr_i_7__N_718), 
            .addr_i_7__N_695(addr_i_7__N_695), .addr_i_7__N_705(addr_i_7__N_705), 
            .addr_i_7__N_736(addr_i_7__N_736), .addr_i_7__N_704(addr_i_7__N_704), 
            .n16415(n16415), .n16414(n16414), .n16421(n16421), .n16420(n16420), 
            .n16419(n16419), .n16417(n16417), .n16422(n16422), .n16425(n16425), 
            .n16430(n16430), .n4(n4), .n13407(n13407), .n13408(n13408)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller_top.v(124[2] 143[2])
    filter filter_sda_inst (.clk_div2(clk_div2), .sda_out(sda_out), .i_sda(i_sda)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller_top.v(113[8] 118[2])
    filter_U0 filter_scl_inst (.clk_div2(clk_div2), .scl_out(scl_out), .out_n__inv(out_n__inv), 
            .out_n(out_n), .count_i_3__N_141(n2945[4]), .rw_mode_i(rw_mode_i), 
            .addr_ack1_i(addr_ack1_i), .wr_done_i_N_430(wr_done_i_N_430)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller_top.v(106[8] 111[2])
    
endmodule
//
// Verilog Description of module i2cslave_controller
//

module i2cslave_controller (clk_div2, \next_state_i_3__N_181[0] , stop_detect_i, 
            start_detect_i_N_352, out_n__inv, d_ff, out_n, n16517, 
            reset_n, \state_1__N_1054[0] , data_out, reset_bus_i, addr_ack1_i, 
            count_i_3__N_145, count_i_3__N_141, wr_done_reg1_i, wr_done_reg2_i, 
            i_sda, wr_done_i_N_430, n17327, rw_mode_i, n13409, n11577, 
            n16523, addr_start, addr_i_7__N_1072, n16518, addr_i_7__N_702, 
            addr_i_7__N_703, addr_i_7__N_733, addr_i_7__N_730, n3141, 
            n16546, dynamic_control_15__N_647, addr_i_7__N_701, addr_i_7__N_727, 
            addr_i_7__N_700, addr_i_7__N_724, addr_i_7__N_699, addr_i_7__N_721, 
            addr_i_7__N_698, addr_i_7__N_718, addr_i_7__N_695, addr_i_7__N_705, 
            addr_i_7__N_736, addr_i_7__N_704, n16415, n16414, n16421, 
            n16420, n16419, n16417, n16422, n16425, n16430, n4, 
            n13407, n13408) /* synthesis syn_module_defined=1 */ ;
    input clk_div2;
    output \next_state_i_3__N_181[0] ;
    output stop_detect_i;
    input start_detect_i_N_352;
    input out_n__inv;
    output d_ff;
    input out_n;
    input n16517;
    input reset_n;
    output \state_1__N_1054[0] ;
    input [7:0]data_out;
    output reset_bus_i;
    output addr_ack1_i;
    output count_i_3__N_145;
    output count_i_3__N_141;
    output wr_done_reg1_i;
    output wr_done_reg2_i;
    input i_sda;
    input wr_done_i_N_430;
    input n17327;
    output rw_mode_i;
    input n13409;
    output n11577;
    output n16523;
    input [7:0]addr_start;
    output [7:0]addr_i_7__N_1072;
    output n16518;
    output addr_i_7__N_702;
    output addr_i_7__N_703;
    output addr_i_7__N_733;
    output addr_i_7__N_730;
    input n3141;
    input n16546;
    output [15:0]dynamic_control_15__N_647;
    output addr_i_7__N_701;
    output addr_i_7__N_727;
    output addr_i_7__N_700;
    output addr_i_7__N_724;
    output addr_i_7__N_699;
    output addr_i_7__N_721;
    output addr_i_7__N_698;
    output addr_i_7__N_718;
    output addr_i_7__N_695;
    output addr_i_7__N_705;
    output addr_i_7__N_736;
    output addr_i_7__N_704;
    output n16415;
    output n16414;
    output n16421;
    output n16420;
    output n16419;
    output n16417;
    output n16422;
    output n16425;
    output n16430;
    input n4;
    output n13407;
    output n13408;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    wire sda_reg /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_slave_top/i2cslave_controller_top/i2cslave_controller_u1/sda_reg */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(159[9:16])
    wire out_n__inv /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(51[9:14])
    wire out_n /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_slave_top/i2cslave_controller_top/filter_scl_inst/out_n */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(51[9:14])
    wire sda_reg_N_351 /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(126[18:32])
    
    wire start_detect2_i, start_detect3_i, sda_wr_data_i, sda_wr_data_i_N_297, 
        not_write_ack_i, n3261, write_ack_i_N_362;
    wire [7:0]data_i;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(188[18:24])
    
    wire reset_bus_i_N_365, read_ack1_i, read_ack_i, read_ack2_i, read_ack3_i, 
        addr_ack1_i_N_355, sda_data_i, n14491;
    wire [5:0]n2945;
    
    wire n16116, wr_done_i, n14057;
    wire [3:0]count_i;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(199[20:27])
    
    wire n16527, sda_wr_data_i_N_325, n5895, n16431, n16386, n3183, 
        n5943, n16376, n13251, n16433, write_ack_i, n4_c, n7, 
        n667, n17324, first_read_done, n1, n14647, sda_wr_data_i_N_317, 
        n16330, n16427, sda_wr_data_i_N_321, n5864, n14652, rw_mode_i_N_313;
    wire [8:0]data_buffer_i;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(134[18:31])
    
    wire reset_bus_i_N_399, n14674, n10, n14622;
    wire [3:0]n3081;
    
    wire n3086;
    wire [3:0]n3093;
    
    wire n16489, n16391, n16392, n16497, n16406, n3176, n17203, 
        n17202, n17200, n17199, n16375, out_n_enable_11, n16385, 
        n3870, n14547, n14551, out_n_enable_8, n13336, n16374, n13289, 
        n13290, n13293, n13294, n13295, n13331, n13296, out_n_enable_10, 
        n16526, n13259, n13380, n3840, n16397;
    wire [8:0]n1140;
    
    wire n16524, n16428, n16525, n16382, n15702, n16115, n16407, 
        n11685, out_n_enable_12, n16083, n16394, n16401, n5952, 
        n16432, n16390, n16402, n16399, n7_adj_1751, n16403;
    wire [8:0]n319;
    
    wire n528, n4_adj_1752, n506, n14091, n16377, n3041, n16082, 
        n6, n2, n8, n6_adj_1753, n16048, n6_adj_1754, n2_adj_1755, 
        n16423, n16044, n29, n16042, n6_adj_1756, n2_adj_1757, n16040, 
        n6_adj_1758, n2_adj_1759, n6_adj_1760, n2_adj_1761, n6_adj_1762, 
        n2_adj_1763, n17204, n17201, n16046, n6_adj_1764, n2_adj_1765, 
        n16081;
    
    FD1S3AX start_detect2_i_750 (.D(\next_state_i_3__N_181[0] ), .CK(clk_div2), 
            .Q(start_detect2_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(259[8] 262[7])
    defparam start_detect2_i_750.GSR = "ENABLED";
    FD1S3AX start_detect3_i_751 (.D(start_detect2_i), .CK(clk_div2), .Q(start_detect3_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(259[8] 262[7])
    defparam start_detect3_i_751.GSR = "ENABLED";
    FD1S3DX stop_detect_i_752 (.D(out_n__inv), .CK(sda_reg), .CD(start_detect_i_N_352), 
            .Q(stop_detect_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(273[14] 278[5])
    defparam stop_detect_i_752.GSR = "DISABLED";
    FD1S3AX d_ff_753 (.D(stop_detect_i), .CK(clk_div2), .Q(d_ff)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(301[4:26])
    defparam d_ff_753.GSR = "ENABLED";
    FD1S3BX sda_wr_data_i_756 (.D(sda_wr_data_i_N_297), .CK(out_n), .PD(n16517), 
            .Q(sda_wr_data_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam sda_wr_data_i_756.GSR = "DISABLED";
    FD1P3IX not_write_ack_i_772 (.D(write_ack_i_N_362), .SP(reset_n), .CD(n3261), 
            .CK(out_n__inv), .Q(not_write_ack_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(693[14] 735[12])
    defparam not_write_ack_i_772.GSR = "DISABLED";
    FD1S3IX data_i__i0 (.D(data_out[0]), .CK(clk_div2), .CD(\state_1__N_1054[0] ), 
            .Q(data_i[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i0.GSR = "ENABLED";
    FD1S3DX reset_bus_i_758 (.D(reset_bus_i_N_365), .CK(out_n), .CD(n16517), 
            .Q(reset_bus_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam reset_bus_i_758.GSR = "DISABLED";
    FD1S3AX read_ack1_i_765 (.D(read_ack_i), .CK(out_n__inv), .Q(read_ack1_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(667[13:39])
    defparam read_ack1_i_765.GSR = "ENABLED";
    FD1S3AX read_ack2_i_766 (.D(read_ack1_i), .CK(clk_div2), .Q(read_ack2_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(673[13:40])
    defparam read_ack2_i_766.GSR = "ENABLED";
    FD1S3AX read_ack3_i_767 (.D(read_ack2_i), .CK(clk_div2), .Q(read_ack3_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(679[13:40])
    defparam read_ack3_i_767.GSR = "ENABLED";
    FD1S3AX addr_ack1_i_768 (.D(addr_ack1_i_N_355), .CK(out_n__inv), .Q(addr_ack1_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(693[14] 735[12])
    defparam addr_ack1_i_768.GSR = "ENABLED";
    FD1S3AY sda_data_i_777 (.D(n14491), .CK(out_n), .Q(sda_data_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(755[13] 791[36])
    defparam sda_data_i_777.GSR = "ENABLED";
    FD1S3AX o_tx_status_780 (.D(count_i_3__N_145), .CK(out_n__inv), .Q(\state_1__N_1054[0] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(826[13] 845[20])
    defparam o_tx_status_780.GSR = "ENABLED";
    LUT4 n3027_bdd_4_lut_2_lut_4_lut (.A(n2945[5]), .B(count_i_3__N_141), 
         .C(addr_ack1_i), .Z(n16116)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam n3027_bdd_4_lut_2_lut_4_lut.init = 16'hfbfb;
    FD1S3AX wr_done_reg1_i_789 (.D(wr_done_i), .CK(clk_div2), .Q(wr_done_reg1_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(944[14] 946[50])
    defparam wr_done_reg1_i_789.GSR = "ENABLED";
    FD1S3AX wr_done_reg2_i_790 (.D(wr_done_reg1_i), .CK(clk_div2), .Q(wr_done_reg2_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(944[14] 946[50])
    defparam wr_done_reg2_i_790.GSR = "ENABLED";
    FD1S3DX start_detect_i_747 (.D(out_n__inv), .CK(sda_reg_N_351), .CD(start_detect_i_N_352), 
            .Q(\next_state_i_3__N_181[0] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(241[14] 246[5])
    defparam start_detect_i_747.GSR = "DISABLED";
    FD1S3AY sda_reg_749 (.D(i_sda), .CK(clk_div2), .Q(sda_reg)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(252[4:21])
    defparam sda_reg_749.GSR = "ENABLED";
    FD1S3DX next_state_i_FSM_i0 (.D(n14057), .CK(out_n), .CD(n16517), 
            .Q(n2945[0]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam next_state_i_FSM_i0.GSR = "DISABLED";
    LUT4 i3353_2_lut_3_lut_4_lut_4_lut (.A(count_i[0]), .B(n16527), .C(sda_wr_data_i_N_325), 
         .D(count_i[1]), .Z(n5895)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i3353_2_lut_3_lut_4_lut_4_lut.init = 16'hf0d0;
    FD1S3IX read_ack_i_769 (.D(count_i_3__N_145), .CK(out_n__inv), .CD(n16431), 
            .Q(read_ack_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(693[14] 735[12])
    defparam read_ack_i_769.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_318_3_lut_4_lut_4_lut (.A(count_i[0]), .B(n16527), 
         .C(sda_wr_data_i_N_325), .D(count_i[1]), .Z(n16386)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i1_2_lut_rep_318_3_lut_4_lut_4_lut.init = 16'h0f0d;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(count_i[0]), .B(n3183), .C(n5943), 
         .D(n16376), .Z(n13251)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_365_2_lut (.A(count_i[0]), .B(count_i[1]), .Z(n16433)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i1_2_lut_rep_365_2_lut.init = 16'hdddd;
    FD1S3IX write_ack_i_770 (.D(write_ack_i_N_362), .CK(out_n__inv), .CD(sda_reg), 
            .Q(write_ack_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(693[14] 735[12])
    defparam write_ack_i_770.GSR = "ENABLED";
    LUT4 n4_bdd_4_lut (.A(n4_c), .B(n7), .C(n667), .D(count_i_3__N_145), 
         .Z(n17324)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n4_bdd_4_lut.init = 16'hca00;
    FD1P3AX first_read_done_788 (.D(n17327), .SP(wr_done_i_N_430), .CK(clk_div2), 
            .Q(first_read_done)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(924[4] 937[7])
    defparam first_read_done_788.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n1), .B(count_i_3__N_145), .C(n14647), .D(n2945[5]), 
         .Z(sda_wr_data_i_N_297)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 select_726_Select_0_i1_3_lut (.A(sda_wr_data_i_N_317), .B(n2945[0]), 
         .C(not_write_ack_i), .Z(n1)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_726_Select_0_i1_3_lut.init = 16'hc8c8;
    LUT4 i1_3_lut_4_lut (.A(n16330), .B(not_write_ack_i), .C(n2945[0]), 
         .D(n16427), .Z(n14057)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hff20;
    LUT4 sda_wr_data_i_I_29_4_lut (.A(sda_wr_data_i_N_321), .B(data_i[7]), 
         .C(n5864), .D(n5895), .Z(sda_wr_data_i_N_317)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(568[26] 589[65])
    defparam sda_wr_data_i_I_29_4_lut.init = 16'hcacf;
    LUT4 i1_4_lut (.A(count_i[0]), .B(write_ack_i), .C(n14652), .D(n5895), 
         .Z(n5864)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'hcecc;
    LUT4 i12144_2_lut (.A(count_i[2]), .B(count_i[1]), .Z(n14652)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12144_2_lut.init = 16'heeee;
    FD1P3AX rw_mode_i_771 (.D(data_buffer_i[1]), .SP(rw_mode_i_N_313), .CK(out_n__inv), 
            .Q(rw_mode_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(693[14] 735[12])
    defparam rw_mode_i_771.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(sda_reg), .B(reset_n), .Z(n3261)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(252[4:21])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_131 (.A(not_write_ack_i), .B(n13409), .C(reset_bus_i_N_399), 
         .D(n2945[0]), .Z(reset_bus_i_N_365)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_131.init = 16'hdccc;
    LUT4 i7_4_lut (.A(count_i_3__N_141), .B(n14674), .C(n10), .D(data_buffer_i[3]), 
         .Z(n14622)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i7_4_lut.init = 16'h0020;
    LUT4 i12166_4_lut (.A(data_buffer_i[5]), .B(data_buffer_i[4]), .C(data_buffer_i[6]), 
         .D(data_buffer_i[2]), .Z(n14674)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i12166_4_lut.init = 16'hfeff;
    LUT4 i2_2_lut (.A(data_buffer_i[8]), .B(data_buffer_i[7]), .Z(n10)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    PFUMX mux_817_i1 (.BLUT(n13251), .ALUT(n3081[0]), .C0(n3086), .Z(n3093[0]));
    LUT4 equal_55_i6_2_lut_rep_421 (.A(count_i[2]), .B(count_i[3]), .Z(n16489)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam equal_55_i6_2_lut_rep_421.init = 16'hdddd;
    LUT4 i1_2_lut_rep_323_3_lut_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), 
         .C(count_i[0]), .D(count_i[1]), .Z(n16391)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_323_3_lut_3_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_rep_324_3_lut_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), 
         .C(count_i[1]), .D(count_i[0]), .Z(n16392)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_324_3_lut_3_lut_4_lut.init = 16'hfdff;
    LUT4 i9043_2_lut (.A(sda_data_i), .B(sda_wr_data_i), .Z(n11577)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9043_2_lut.init = 16'h8888;
    LUT4 i9102_2_lut_rep_429 (.A(count_i[0]), .B(count_i[1]), .Z(n16497)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9102_2_lut_rep_429.init = 16'h8888;
    LUT4 i1183_3_lut (.A(not_write_ack_i), .B(stop_detect_i), .C(count_i_3__N_145), 
         .Z(n3183)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1183_3_lut.init = 16'h3535;
    LUT4 i1_2_lut_rep_338_3_lut_4_lut (.A(count_i[0]), .B(count_i[1]), .C(count_i[3]), 
         .D(count_i[2]), .Z(n16406)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_338_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i891_2_lut (.A(count_i_3__N_145), .B(stop_detect_i), .Z(n3176)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i891_2_lut.init = 16'h2222;
    LUT4 i815_2_lut (.A(count_i_3__N_141), .B(n2945[5]), .Z(n3086)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i815_2_lut.init = 16'heeee;
    LUT4 data_i_4__bdd_3_lut (.A(data_i[2]), .B(count_i[2]), .C(data_i[6]), 
         .Z(n17203)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam data_i_4__bdd_3_lut.init = 16'hb8b8;
    LUT4 mux_133_i4_3_lut_4_lut (.A(data_buffer_i[4]), .B(n16523), .C(\state_1__N_1054[0] ), 
         .D(addr_start[3]), .Z(addr_i_7__N_1072[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(657[21:61])
    defparam mux_133_i4_3_lut_4_lut.init = 16'h8f80;
    LUT4 data_i_4__bdd_3_lut_13775 (.A(data_i[4]), .B(count_i[2]), .C(data_i[0]), 
         .Z(n17202)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam data_i_4__bdd_3_lut_13775.init = 16'hb8b8;
    LUT4 count_i_1__bdd_2_lut (.A(count_i[2]), .B(data_i[3]), .Z(n17200)) /* synthesis lut_function=(A (B)) */ ;
    defparam count_i_1__bdd_2_lut.init = 16'h8888;
    LUT4 count_i_1__bdd_3_lut (.A(count_i[2]), .B(data_i[5]), .C(data_i[1]), 
         .Z(n17199)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam count_i_1__bdd_3_lut.init = 16'hd8d8;
    LUT4 i13283_3_lut_3_lut_4_lut_4_lut (.A(n16376), .B(n16375), .C(n16431), 
         .D(n3183), .Z(out_n_enable_11)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i13283_3_lut_3_lut_4_lut_4_lut.init = 16'hbfff;
    LUT4 i3397_3_lut_4_lut (.A(n3176), .B(n16385), .C(n16431), .D(n5895), 
         .Z(n5943)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i3397_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_133_i5_3_lut_4_lut (.A(n16523), .B(data_buffer_i[5]), .C(\state_1__N_1054[0] ), 
         .D(addr_start[4]), .Z(addr_i_7__N_1072[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam mux_133_i5_3_lut_4_lut.init = 16'h8f80;
    FD1S3IX data_i__i1 (.D(data_out[1]), .CK(clk_div2), .CD(\state_1__N_1054[0] ), 
            .Q(data_i[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i1.GSR = "ENABLED";
    FD1S3IX data_i__i2 (.D(data_out[2]), .CK(clk_div2), .CD(\state_1__N_1054[0] ), 
            .Q(data_i[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i2.GSR = "ENABLED";
    FD1S3IX data_i__i3 (.D(data_out[3]), .CK(clk_div2), .CD(\state_1__N_1054[0] ), 
            .Q(data_i[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i3.GSR = "ENABLED";
    FD1S3IX data_i__i4 (.D(data_out[4]), .CK(clk_div2), .CD(\state_1__N_1054[0] ), 
            .Q(data_i[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i4.GSR = "ENABLED";
    FD1S3IX data_i__i5 (.D(data_out[5]), .CK(clk_div2), .CD(\state_1__N_1054[0] ), 
            .Q(data_i[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i5.GSR = "ENABLED";
    FD1S3IX data_i__i6 (.D(data_out[6]), .CK(clk_div2), .CD(\state_1__N_1054[0] ), 
            .Q(data_i[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i6.GSR = "ENABLED";
    FD1S3IX data_i__i7 (.D(data_out[7]), .CK(clk_div2), .CD(\state_1__N_1054[0] ), 
            .Q(data_i[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(651[13:30])
    defparam data_i__i7.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_307_4_lut (.A(n3176), .B(n16385), .C(n3086), .D(n16386), 
         .Z(n16375)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_3_lut_rep_307_4_lut.init = 16'h0d00;
    FD1S3DX next_state_i_FSM_i1 (.D(n3870), .CK(out_n), .CD(n16517), .Q(count_i_3__N_145));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam next_state_i_FSM_i1.GSR = "DISABLED";
    FD1S3DX next_state_i_FSM_i4 (.D(n14547), .CK(out_n), .CD(n16517), 
            .Q(count_i_3__N_141));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam next_state_i_FSM_i4.GSR = "DISABLED";
    FD1S3BX next_state_i_FSM_i5 (.D(n14551), .CK(out_n), .PD(n16517), 
            .Q(n2945[5]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam next_state_i_FSM_i5.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i1 (.D(n13336), .SP(out_n_enable_8), .CK(out_n), 
            .Q(data_buffer_i[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i1.GSR = "DISABLED";
    LUT4 i13346_2_lut_rep_306_2_lut_4_lut (.A(write_ack_i), .B(n16385), 
         .C(n3176), .D(n3183), .Z(n16374)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i13346_2_lut_rep_306_2_lut_4_lut.init = 16'h3500;
    LUT4 o_start_I_0_2_lut_rep_450 (.A(start_detect2_i), .B(start_detect3_i), 
         .Z(n16518)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam o_start_I_0_2_lut_rep_450.init = 16'h4444;
    LUT4 addr_i_7__N_696_I_0_229_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[2]), .D(n16517), .Z(addr_i_7__N_702)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_229_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 addr_i_7__N_696_I_0_230_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[1]), .D(n16517), .Z(addr_i_7__N_703)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_230_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 i1_2_lut_4_lut (.A(n16431), .B(n16386), .C(write_ack_i), .D(reset_bus_i), 
         .Z(reset_bus_i_N_399)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hff04;
    LUT4 addr_i_7__N_696_I_0_238_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[1]), .D(n16517), .Z(addr_i_7__N_733)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_238_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 addr_i_7__N_696_I_0_237_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[2]), .D(n16517), .Z(addr_i_7__N_730)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_237_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n16523), .B(n3141), .C(data_buffer_i[1]), 
         .D(n16546), .Z(dynamic_control_15__N_647[8])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 addr_i_7__N_696_I_0_228_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[3]), .D(n16517), .Z(addr_i_7__N_701)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_228_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_132 (.A(n16523), .B(n3141), .C(data_buffer_i[2]), 
         .D(n16546), .Z(dynamic_control_15__N_647[9])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_132.init = 16'h8000;
    LUT4 addr_i_7__N_696_I_0_236_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[3]), .D(n16517), .Z(addr_i_7__N_727)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_236_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 i1_2_lut_3_lut_4_lut_adj_133 (.A(n16523), .B(n3141), .C(data_buffer_i[3]), 
         .D(n16546), .Z(dynamic_control_15__N_647[10])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_133.init = 16'h8000;
    LUT4 addr_i_7__N_696_I_0_227_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[4]), .D(n16517), .Z(addr_i_7__N_700)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_227_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_134 (.A(n16523), .B(n3141), .C(data_buffer_i[4]), 
         .D(n16546), .Z(dynamic_control_15__N_647[11])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_134.init = 16'h8000;
    LUT4 addr_i_7__N_696_I_0_235_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[4]), .D(n16517), .Z(addr_i_7__N_724)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_235_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 addr_i_7__N_696_I_0_226_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[5]), .D(n16517), .Z(addr_i_7__N_699)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_226_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 addr_i_7__N_696_I_0_234_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[5]), .D(n16517), .Z(addr_i_7__N_721)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_234_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 i1_2_lut_3_lut_4_lut_adj_135 (.A(n16523), .B(n3141), .C(data_buffer_i[5]), 
         .D(n16546), .Z(dynamic_control_15__N_647[12])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_135.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_136 (.A(n16523), .B(n3141), .C(data_buffer_i[6]), 
         .D(n16546), .Z(dynamic_control_15__N_647[13])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_136.init = 16'h8000;
    LUT4 addr_i_7__N_696_I_0_225_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[6]), .D(n16517), .Z(addr_i_7__N_698)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_225_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 addr_i_7__N_696_I_0_233_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[6]), .D(n16517), .Z(addr_i_7__N_718)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_233_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 addr_i_7__I_0_239_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[7]), .D(n16517), .Z(addr_i_7__N_695)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__I_0_239_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 addr_i_7__N_696_I_0_232_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[7]), .D(n16517), .Z(addr_i_7__N_705)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_232_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 mux_133_i7_3_lut_4_lut (.A(n16523), .B(data_buffer_i[7]), .C(\state_1__N_1054[0] ), 
         .D(addr_start[6]), .Z(addr_i_7__N_1072[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam mux_133_i7_3_lut_4_lut.init = 16'h8f80;
    LUT4 addr_i_7__N_696_I_0_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[0]), .D(n16517), .Z(addr_i_7__N_736)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 mux_133_i6_3_lut_4_lut (.A(n16523), .B(data_buffer_i[6]), .C(\state_1__N_1054[0] ), 
         .D(addr_start[5]), .Z(addr_i_7__N_1072[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam mux_133_i6_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_3_lut_4_lut_adj_137 (.A(n16523), .B(n3141), .C(data_buffer_i[7]), 
         .D(n16546), .Z(dynamic_control_15__N_647[14])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_137.init = 16'h8000;
    LUT4 addr_i_7__N_696_I_0_231_2_lut_3_lut_4_lut (.A(start_detect2_i), .B(start_detect3_i), 
         .C(addr_start[0]), .D(n16517), .Z(addr_i_7__N_704)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(264[21:56])
    defparam addr_i_7__N_696_I_0_231_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 i9116_2_lut_3_lut_4_lut (.A(n16523), .B(n3141), .C(data_buffer_i[8]), 
         .D(n16546), .Z(dynamic_control_15__N_647[15])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i9116_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3AX data_buffer_i_i0_i2 (.D(n13289), .SP(out_n_enable_8), .CK(out_n), 
            .Q(data_buffer_i[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i2.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i3 (.D(n13290), .SP(out_n_enable_8), .CK(out_n), 
            .Q(data_buffer_i[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i3.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i4 (.D(n13293), .SP(out_n_enable_8), .CK(out_n), 
            .Q(data_buffer_i[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i4.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i5 (.D(n13294), .SP(out_n_enable_8), .CK(out_n), 
            .Q(data_buffer_i[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i5.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i6 (.D(n13295), .SP(out_n_enable_8), .CK(out_n), 
            .Q(data_buffer_i[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i6.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i7 (.D(n13331), .SP(out_n_enable_8), .CK(out_n), 
            .Q(data_buffer_i[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i7.GSR = "DISABLED";
    FD1P3AX data_buffer_i_i0_i8 (.D(n13296), .SP(out_n_enable_8), .CK(out_n), 
            .Q(data_buffer_i[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam data_buffer_i_i0_i8.GSR = "DISABLED";
    FD1P3DX count_i_i0_i1 (.D(n3093[1]), .SP(out_n_enable_10), .CK(out_n), 
            .CD(n16517), .Q(count_i[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam count_i_i0_i1.GSR = "DISABLED";
    FD1P3DX count_i_i0_i2 (.D(n3093[2]), .SP(out_n_enable_10), .CK(out_n), 
            .CD(n16517), .Q(count_i[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam count_i_i0_i2.GSR = "DISABLED";
    LUT4 mux_133_i3_3_lut_4_lut (.A(n16523), .B(data_buffer_i[3]), .C(\state_1__N_1054[0] ), 
         .D(addr_start[2]), .Z(addr_i_7__N_1072[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam mux_133_i3_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_3_lut_4_lut_adj_138 (.A(n16523), .B(n3141), .C(data_buffer_i[7]), 
         .D(n16546), .Z(dynamic_control_15__N_647[6])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_138.init = 16'h0080;
    LUT4 mux_133_i8_3_lut_4_lut (.A(data_buffer_i[8]), .B(n16523), .C(\state_1__N_1054[0] ), 
         .D(addr_start[7]), .Z(addr_i_7__N_1072[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(657[21:61])
    defparam mux_133_i8_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_3_lut_4_lut_adj_139 (.A(n16523), .B(n3141), .C(data_buffer_i[6]), 
         .D(n16546), .Z(dynamic_control_15__N_647[5])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_139.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_140 (.A(n16523), .B(n3141), .C(data_buffer_i[5]), 
         .D(n16546), .Z(dynamic_control_15__N_647[4])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_140.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_141 (.A(n16523), .B(n3141), .C(data_buffer_i[3]), 
         .D(n16546), .Z(dynamic_control_15__N_647[2])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_141.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_142 (.A(n16523), .B(n3141), .C(data_buffer_i[2]), 
         .D(n16546), .Z(dynamic_control_15__N_647[1])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_142.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_143 (.A(n16523), .B(n3141), .C(data_buffer_i[4]), 
         .D(n16546), .Z(dynamic_control_15__N_647[3])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_143.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_144 (.A(count_i_3__N_141), .B(addr_ack1_i), 
         .C(n16527), .D(n16526), .Z(n13259)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_144.init = 16'h2220;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(count_i_3__N_141), .B(addr_ack1_i), 
         .C(n16527), .D(n16526), .Z(n13380)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_145 (.A(n16523), .B(n3141), .C(data_buffer_i[8]), 
         .D(n16546), .Z(dynamic_control_15__N_647[7])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_145.init = 16'h0080;
    FD1P3DX count_i_i0_i0 (.D(n3093[0]), .SP(out_n_enable_11), .CK(out_n), 
            .CD(n16517), .Q(count_i[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam count_i_i0_i0.GSR = "DISABLED";
    FD1S3IX wr_done_i_787 (.D(n16397), .CK(clk_div2), .CD(n3840), .Q(wr_done_i)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(924[4] 937[7])
    defparam wr_done_i_787.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_146 (.A(n16523), .B(n3141), .C(data_buffer_i[1]), 
         .D(n16546), .Z(dynamic_control_15__N_647[0])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_146.init = 16'h0080;
    LUT4 mux_133_i1_3_lut_4_lut (.A(n16523), .B(data_buffer_i[1]), .C(\state_1__N_1054[0] ), 
         .D(addr_start[0]), .Z(addr_i_7__N_1072[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam mux_133_i1_3_lut_4_lut.init = 16'h8f80;
    LUT4 o_data_valid_I_0_2_lut_rep_455 (.A(read_ack3_i), .B(read_ack2_i), 
         .Z(n16523)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam o_data_valid_I_0_2_lut_rep_455.init = 16'h4444;
    LUT4 i1_2_lut_rep_347_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(data_buffer_i[5]), 
         .Z(n16415)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_347_3_lut.init = 16'h4040;
    LUT4 i9083_2_lut_rep_346_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(data_buffer_i[4]), 
         .Z(n16414)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i9083_2_lut_rep_346_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_353_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(data_buffer_i[3]), 
         .Z(n16421)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_353_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_352_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(data_buffer_i[6]), 
         .Z(n16420)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_352_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_351_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(data_buffer_i[7]), 
         .Z(n16419)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_351_3_lut.init = 16'h4040;
    LUT4 i1_3_lut_rep_349_4_lut (.A(read_ack3_i), .B(read_ack2_i), .C(wr_done_reg1_i), 
         .D(wr_done_reg2_i), .Z(n16417)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_3_lut_rep_349_4_lut.init = 16'h44f4;
    LUT4 mux_133_i2_3_lut_4_lut (.A(n16523), .B(data_buffer_i[2]), .C(\state_1__N_1054[0] ), 
         .D(addr_start[1]), .Z(addr_i_7__N_1072[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam mux_133_i2_3_lut_4_lut.init = 16'h8f80;
    LUT4 i9084_2_lut_rep_354_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(data_buffer_i[8]), 
         .Z(n16422)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i9084_2_lut_rep_354_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_357_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(data_buffer_i[1]), 
         .Z(n16425)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_357_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_362_3_lut (.A(read_ack3_i), .B(read_ack2_i), .C(data_buffer_i[2]), 
         .Z(n16430)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(681[27:57])
    defparam i1_2_lut_rep_362_3_lut.init = 16'h4040;
    LUT4 i9081_2_lut_3_lut_4_lut (.A(n16526), .B(n16527), .C(data_buffer_i[8]), 
         .D(read_ack_i), .Z(n1140[8])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i9081_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_147 (.A(n16526), .B(n16527), .C(data_buffer_i[6]), 
         .D(read_ack_i), .Z(n1140[6])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1_2_lut_3_lut_4_lut_adj_147.init = 16'h1000;
    LUT4 i874_2_lut_rep_456 (.A(n2945[5]), .B(\next_state_i_3__N_181[0] ), 
         .Z(n16524)) /* synthesis lut_function=(A (B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i874_2_lut_rep_456.init = 16'h8888;
    LUT4 i1_3_lut_rep_360_3_lut (.A(n2945[5]), .B(\next_state_i_3__N_181[0] ), 
         .C(addr_ack1_i), .Z(n16428)) /* synthesis lut_function=(A (B)+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_3_lut_rep_360_3_lut.init = 16'hd8d8;
    LUT4 i206_2_lut_rep_457 (.A(\next_state_i_3__N_181[0] ), .B(n2945[5]), 
         .Z(n16525)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i206_2_lut_rep_457.init = 16'h4444;
    LUT4 i13272_2_lut_rep_314_2_lut_4_lut_4_lut_2_lut (.A(n2945[5]), .B(addr_ack1_i), 
         .Z(n16382)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i13272_2_lut_rep_314_2_lut_4_lut_4_lut_2_lut.init = 16'h1111;
    LUT4 i13344_3_lut_4_lut (.A(\next_state_i_3__N_181[0] ), .B(n2945[5]), 
         .C(n16517), .D(n15702), .Z(out_n_enable_8)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i13344_3_lut_4_lut.init = 16'h0b00;
    LUT4 i1099_2_lut_rep_458 (.A(count_i[1]), .B(count_i[0]), .Z(n16526)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i1099_2_lut_rep_458.init = 16'heeee;
    LUT4 n3027_bdd_3_lut (.A(n16375), .B(n3183), .C(n16376), .Z(n16115)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam n3027_bdd_3_lut.init = 16'hf7f7;
    LUT4 i1_2_lut_3_lut_4_lut_adj_148 (.A(n16526), .B(n16527), .C(data_buffer_i[5]), 
         .D(read_ack_i), .Z(n1140[5])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1_2_lut_3_lut_4_lut_adj_148.init = 16'h1000;
    LUT4 count_i_3__N_146_I_0_859_2_lut_3_lut_4_lut (.A(count_i[1]), .B(count_i[0]), 
         .C(n2945[0]), .D(n16527), .Z(write_ack_i_N_362)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam count_i_3__N_146_I_0_859_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i9080_2_lut_3_lut_4_lut (.A(n16526), .B(n16527), .C(data_buffer_i[4]), 
         .D(read_ack_i), .Z(n1140[4])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i9080_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_149 (.A(n16526), .B(n16527), .C(data_buffer_i[7]), 
         .D(read_ack_i), .Z(n1140[7])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1_2_lut_3_lut_4_lut_adj_149.init = 16'h1000;
    LUT4 i880_2_lut_rep_317_3_lut_4_lut (.A(n16526), .B(n16527), .C(\next_state_i_3__N_181[0] ), 
         .D(read_ack_i), .Z(n16385)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i880_2_lut_rep_317_3_lut_4_lut.init = 16'hf1f0;
    LUT4 equal_56_i7_2_lut_rep_339_3_lut_4_lut (.A(count_i[1]), .B(count_i[0]), 
         .C(count_i[3]), .D(count_i[2]), .Z(n16407)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam equal_56_i7_2_lut_rep_339_3_lut_4_lut.init = 16'hfeff;
    LUT4 i9150_2_lut_3_lut_4_lut (.A(n16526), .B(n16527), .C(n4), .D(read_ack_i), 
         .Z(n11685)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i9150_2_lut_3_lut_4_lut.init = 16'hf1f0;
    FD1P3DX count_i_i0_i3 (.D(n16083), .SP(out_n_enable_12), .CK(out_n), 
            .CD(n16517), .Q(count_i[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=143 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(336[14] 619[12])
    defparam count_i_i0_i3.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_326_3_lut_4_lut (.A(count_i[1]), .B(count_i[0]), .C(read_ack_i), 
         .D(n16527), .Z(n16394)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i1_2_lut_rep_326_3_lut_4_lut.init = 16'hfffe;
    LUT4 count_i_3__N_141_I_0_856_2_lut_3_lut_4_lut (.A(count_i[1]), .B(count_i[0]), 
         .C(count_i_3__N_141), .D(n16527), .Z(rw_mode_i_N_313)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam count_i_3__N_141_I_0_856_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_150 (.A(count_i[1]), .B(count_i[0]), .C(n14622), 
         .D(n16527), .Z(addr_ack1_i_N_355)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i1_2_lut_3_lut_4_lut_adj_150.init = 16'h0010;
    LUT4 rw_mode_i_N_312_I_0_857_2_lut_rep_333_3_lut_4_lut (.A(count_i[1]), 
         .B(count_i[0]), .C(read_ack_i), .D(n16527), .Z(n16401)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam rw_mode_i_N_312_I_0_857_2_lut_rep_333_3_lut_4_lut.init = 16'h0010;
    LUT4 i327_2_lut_3_lut_4_lut (.A(count_i[1]), .B(count_i[0]), .C(\next_state_i_3__N_181[0] ), 
         .D(n16527), .Z(n667)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i327_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i9098_2_lut_3_lut_4_lut (.A(count_i[1]), .B(count_i[0]), .C(n5952), 
         .D(count_i[2]), .Z(n3093[2])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i9098_2_lut_3_lut_4_lut.init = 16'he010;
    LUT4 i1107_2_lut_rep_364_3_lut (.A(count_i[1]), .B(count_i[0]), .C(count_i[2]), 
         .Z(n16432)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i1107_2_lut_rep_364_3_lut.init = 16'hfefe;
    LUT4 i2_2_lut_rep_322_3_lut_4_lut (.A(count_i[1]), .B(count_i[0]), .C(count_i[3]), 
         .D(count_i[2]), .Z(n16390)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i2_2_lut_rep_322_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_334_3_lut_4_lut (.A(count_i[1]), .B(count_i[0]), .C(count_i[3]), 
         .D(count_i[2]), .Z(n16402)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i1_2_lut_rep_334_3_lut_4_lut.init = 16'h0f1e;
    LUT4 equal_57_i6_2_lut_rep_459 (.A(count_i[2]), .B(count_i[3]), .Z(n16527)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam equal_57_i6_2_lut_rep_459.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_151 (.A(n16526), .B(n16527), .C(data_buffer_i[2]), 
         .D(read_ack_i), .Z(n4_c)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1_2_lut_3_lut_4_lut_adj_151.init = 16'h1000;
    LUT4 i1_2_lut_rep_331_3_lut_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), 
         .C(count_i[0]), .D(count_i[1]), .Z(n16399)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_331_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_152 (.A(count_i[2]), .B(count_i[3]), .C(count_i[1]), 
         .D(count_i[0]), .Z(n7_adj_1751)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_3_lut_4_lut_adj_152.init = 16'hefff;
    LUT4 i1_2_lut_rep_335_3_lut_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), 
         .C(count_i[1]), .D(count_i[0]), .Z(n16403)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam i1_2_lut_rep_335_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 equal_32_i8_1_lut_rep_329_2_lut_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), 
         .C(count_i[0]), .D(count_i[1]), .Z(n16397)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam equal_32_i8_1_lut_rep_329_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 equal_32_i7_2_lut_rep_363_3_lut_4_lut (.A(count_i[2]), .B(count_i[3]), 
         .C(count_i[0]), .D(count_i[1]), .Z(n16431)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam equal_32_i7_2_lut_rep_363_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_359_3_lut (.A(addr_ack1_i), .B(rw_mode_i), .C(count_i_3__N_141), 
         .Z(n16427)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_rep_359_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_adj_153 (.A(addr_ack1_i), .B(rw_mode_i), .C(data_i[7]), 
         .D(count_i_3__N_141), .Z(n14647)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_3_lut_4_lut_adj_153.init = 16'hf700;
    LUT4 write_ack_i_bdd_4_lut (.A(write_ack_i), .B(n16403), .C(sda_wr_data_i_N_325), 
         .D(n16431), .Z(n16330)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam write_ack_i_bdd_4_lut.init = 16'hfffb;
    LUT4 i1917_4_lut_4_lut (.A(n16431), .B(n16399), .C(data_buffer_i[2]), 
         .D(sda_reg), .Z(n319[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1917_4_lut_4_lut.init = 16'hf2d0;
    LUT4 i1182_3_lut_rep_308_4_lut (.A(n16401), .B(\next_state_i_3__N_181[0] ), 
         .C(n3176), .D(write_ack_i), .Z(n16376)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(532[26] 552[65])
    defparam i1182_3_lut_rep_308_4_lut.init = 16'hefe0;
    LUT4 i1923_4_lut_4_lut (.A(n16431), .B(n16392), .C(data_buffer_i[5]), 
         .D(sda_reg), .Z(n319[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1923_4_lut_4_lut.init = 16'hf2d0;
    LUT4 i1383_4_lut (.A(count_i_3__N_145), .B(n528), .C(n4), .D(n16394), 
         .Z(n3870)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1383_4_lut.init = 16'hcecc;
    LUT4 i233_3_lut (.A(addr_ack1_i), .B(count_i_3__N_141), .C(rw_mode_i), 
         .Z(n528)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i233_3_lut.init = 16'h0808;
    LUT4 i1_4_lut_adj_154 (.A(n16524), .B(n13259), .C(count_i_3__N_145), 
         .D(n4_adj_1752), .Z(n14547)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_154.init = 16'hfeee;
    LUT4 i1_2_lut_adj_155 (.A(stop_detect_i), .B(\next_state_i_3__N_181[0] ), 
         .Z(n4_adj_1752)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_2_lut_adj_155.init = 16'h4444;
    LUT4 i1_4_lut_adj_156 (.A(n16525), .B(n13380), .C(n506), .D(n14091), 
         .Z(n14551)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_156.init = 16'hfffe;
    LUT4 i211_4_lut (.A(n16431), .B(count_i_3__N_145), .C(stop_detect_i), 
         .D(n11685), .Z(n506)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i211_4_lut.init = 16'hc0c4;
    LUT4 i1_3_lut (.A(n2945[0]), .B(not_write_ack_i), .C(n16377), .Z(n14091)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i1_3_lut_rep_309_4_lut (.A(n16403), .B(sda_wr_data_i_N_325), .C(write_ack_i), 
         .D(n16431), .Z(n16377)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(568[26] 589[65])
    defparam i1_3_lut_rep_309_4_lut.init = 16'h0002;
    LUT4 i1925_4_lut_4_lut (.A(n16431), .B(n16391), .C(data_buffer_i[6]), 
         .D(sda_reg), .Z(n319[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1925_4_lut_4_lut.init = 16'hf2d0;
    LUT4 count_i_3__bdd_3_lut (.A(count_i[3]), .B(count_i[2]), .C(count_i[1]), 
         .Z(sda_wr_data_i_N_325)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam count_i_3__bdd_3_lut.init = 16'hfefe;
    LUT4 i1929_4_lut_4_lut (.A(n16431), .B(n16390), .C(data_buffer_i[8]), 
         .D(sda_reg), .Z(n319[8])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1929_4_lut_4_lut.init = 16'hf2d0;
    LUT4 i1919_4_lut_4_lut (.A(n16431), .B(n7_adj_1751), .C(data_buffer_i[3]), 
         .D(sda_reg), .Z(n319[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1919_4_lut_4_lut.init = 16'hf2d0;
    LUT4 i1927_4_lut_4_lut (.A(n16431), .B(n16406), .C(data_buffer_i[7]), 
         .D(sda_reg), .Z(n319[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1927_4_lut_4_lut.init = 16'hf2d0;
    LUT4 i9099_3_lut_4_lut_4_lut_4_lut (.A(n16428), .B(n16525), .C(count_i[0]), 
         .D(n16431), .Z(n3081[0])) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i9099_3_lut_4_lut_4_lut_4_lut.init = 16'h0110;
    LUT4 i13343_4_lut (.A(n3041), .B(n2945[0]), .C(count_i_3__N_141), 
         .D(addr_ack1_i), .Z(n15702)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(798[13:35])
    defparam i13343_4_lut.init = 16'h0111;
    LUT4 i800_4_lut (.A(count_i_3__N_145), .B(read_ack_i), .C(stop_detect_i), 
         .D(n667), .Z(n3041)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;
    defparam i800_4_lut.init = 16'ha0a2;
    LUT4 n5943_bdd_4_lut_13618 (.A(n5943), .B(n16402), .C(n16376), .D(n3183), 
         .Z(n16082)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;
    defparam n5943_bdd_4_lut_13618.init = 16'hf200;
    LUT4 i2_4_lut_adj_157 (.A(n319[1]), .B(n6), .C(count_i_3__N_141), 
         .D(n2), .Z(n13336)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_4_lut_adj_157.init = 16'hffec;
    LUT4 i1915_4_lut (.A(data_buffer_i[1]), .B(sda_reg), .C(n16403), .D(n16431), 
         .Z(n319[1])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(403[26] 412[24])
    defparam i1915_4_lut.init = 16'hacaa;
    LUT4 select_729_Select_1_i6_4_lut (.A(data_buffer_i[1]), .B(n2945[5]), 
         .C(sda_reg), .D(n16403), .Z(n6)) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_1_i6_4_lut.init = 16'h88c0;
    LUT4 select_729_Select_1_i2_4_lut (.A(n8), .B(count_i_3__N_145), .C(data_buffer_i[1]), 
         .D(n16401), .Z(n2)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_1_i2_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_158 (.A(n667), .B(data_buffer_i[1]), .C(sda_reg), 
         .D(n16403), .Z(n8)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_158.init = 16'h88a0;
    LUT4 i2_4_lut_adj_159 (.A(n319[2]), .B(n6_adj_1753), .C(count_i_3__N_141), 
         .D(n17324), .Z(n13289)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_4_lut_adj_159.init = 16'hffec;
    INV i13816 (.A(sda_reg), .Z(sda_reg_N_351));
    LUT4 select_729_Select_2_i6_4_lut (.A(sda_reg), .B(n2945[5]), .C(data_buffer_i[2]), 
         .D(n16399), .Z(n6_adj_1753)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_2_i6_4_lut.init = 16'hc088;
    LUT4 i32_rep_304_3_lut_4_lut (.A(count_i[3]), .B(n16432), .C(data_buffer_i[8]), 
         .D(sda_reg), .Z(n16048)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam i32_rep_304_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i13418 (.BLUT(n16116), .ALUT(n16115), .C0(n16431), .Z(out_n_enable_12));
    LUT4 i2_4_lut_adj_160 (.A(n319[3]), .B(n6_adj_1754), .C(count_i_3__N_141), 
         .D(n2_adj_1755), .Z(n13290)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_4_lut_adj_160.init = 16'hffec;
    LUT4 select_729_Select_3_i6_4_lut (.A(sda_reg), .B(n2945[5]), .C(data_buffer_i[3]), 
         .D(n7_adj_1751), .Z(n6_adj_1754)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_3_i6_4_lut.init = 16'hc088;
    LUT4 i34_rep_300_3_lut_4_lut (.A(n16489), .B(n16423), .C(data_buffer_i[6]), 
         .D(sda_reg), .Z(n16044)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam i34_rep_300_3_lut_4_lut.init = 16'hf1e0;
    LUT4 select_729_Select_3_i2_4_lut (.A(n29), .B(count_i_3__N_145), .C(data_buffer_i[3]), 
         .D(n16401), .Z(n2_adj_1755)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_3_i2_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_161 (.A(n667), .B(sda_reg), .C(data_buffer_i[3]), 
         .D(n7_adj_1751), .Z(n29)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_161.init = 16'ha088;
    LUT4 i21_3_lut_4_lut (.A(n16527), .B(n16423), .C(data_buffer_i[2]), 
         .D(sda_reg), .Z(n7)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam i21_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i35_rep_298_3_lut_4_lut (.A(n16489), .B(n16433), .C(data_buffer_i[5]), 
         .D(sda_reg), .Z(n16042)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(568[30:45])
    defparam i35_rep_298_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut_adj_162 (.A(n319[4]), .B(n6_adj_1756), .C(count_i_3__N_141), 
         .D(n2_adj_1757), .Z(n13293)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_4_lut_adj_162.init = 16'hffec;
    LUT4 select_729_Select_4_i6_4_lut (.A(sda_reg), .B(n2945[5]), .C(data_buffer_i[4]), 
         .D(n16407), .Z(n6_adj_1756)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_4_i6_4_lut.init = 16'hc088;
    LUT4 select_729_Select_4_i2_4_lut (.A(n1140[4]), .B(count_i_3__N_145), 
         .C(n16040), .D(n667), .Z(n2_adj_1757)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_4_i2_4_lut.init = 16'hc088;
    LUT4 i2_4_lut_adj_163 (.A(n319[5]), .B(n6_adj_1758), .C(count_i_3__N_141), 
         .D(n2_adj_1759), .Z(n13294)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_4_lut_adj_163.init = 16'hffec;
    LUT4 select_729_Select_5_i6_4_lut (.A(sda_reg), .B(n2945[5]), .C(data_buffer_i[5]), 
         .D(n16392), .Z(n6_adj_1758)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_5_i6_4_lut.init = 16'hc088;
    LUT4 select_729_Select_5_i2_4_lut (.A(n1140[5]), .B(count_i_3__N_145), 
         .C(n16042), .D(n667), .Z(n2_adj_1759)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_5_i2_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_164 (.A(n2945[5]), .B(reset_bus_i), .C(n4), .D(n13380), 
         .Z(n13407)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i1_4_lut_adj_164.init = 16'heca0;
    LUT4 i2_4_lut_adj_165 (.A(n319[6]), .B(n6_adj_1760), .C(count_i_3__N_141), 
         .D(n2_adj_1761), .Z(n13295)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_4_lut_adj_165.init = 16'hffec;
    LUT4 select_729_Select_6_i6_4_lut (.A(sda_reg), .B(n2945[5]), .C(data_buffer_i[6]), 
         .D(n16391), .Z(n6_adj_1760)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_6_i6_4_lut.init = 16'hc088;
    LUT4 select_729_Select_6_i2_4_lut (.A(n1140[6]), .B(count_i_3__N_145), 
         .C(n16044), .D(n667), .Z(n2_adj_1761)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_6_i2_4_lut.init = 16'hc088;
    LUT4 i2_4_lut_adj_166 (.A(n319[7]), .B(n6_adj_1762), .C(count_i_3__N_141), 
         .D(n2_adj_1763), .Z(n13331)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_4_lut_adj_166.init = 16'hffec;
    L6MUX21 i13778 (.D0(n17204), .D1(n17201), .SD(count_i[0]), .Z(sda_wr_data_i_N_321));
    PFUMX i13776 (.BLUT(n17203), .ALUT(n17202), .C0(count_i[1]), .Z(n17204));
    LUT4 select_729_Select_7_i6_4_lut (.A(sda_reg), .B(n2945[5]), .C(data_buffer_i[7]), 
         .D(n16406), .Z(n6_adj_1762)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_7_i6_4_lut.init = 16'hc088;
    PFUMX i13773 (.BLUT(n17200), .ALUT(n17199), .C0(count_i[1]), .Z(n17201));
    LUT4 select_729_Select_7_i2_4_lut (.A(n1140[7]), .B(count_i_3__N_145), 
         .C(n16046), .D(n667), .Z(n2_adj_1763)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_7_i2_4_lut.init = 16'hc088;
    LUT4 i2_4_lut_adj_167 (.A(n319[8]), .B(n6_adj_1764), .C(count_i_3__N_141), 
         .D(n2_adj_1765), .Z(n13296)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_4_lut_adj_167.init = 16'hffec;
    LUT4 select_729_Select_8_i6_4_lut (.A(sda_reg), .B(n2945[5]), .C(data_buffer_i[8]), 
         .D(n16390), .Z(n6_adj_1764)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_8_i6_4_lut.init = 16'hc088;
    LUT4 select_729_Select_8_i2_4_lut (.A(n1140[8]), .B(count_i_3__N_145), 
         .C(n16048), .D(n667), .Z(n2_adj_1765)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam select_729_Select_8_i2_4_lut.init = 16'hc088;
    LUT4 i9097_3_lut (.A(count_i[1]), .B(n5952), .C(count_i[0]), .Z(n3093[1])) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i9097_3_lut.init = 16'h8484;
    LUT4 i3406_4_lut (.A(n5943), .B(n16382), .C(n3086), .D(n16374), 
         .Z(n5952)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i3406_4_lut.init = 16'hcac0;
    LUT4 i13263_4_lut (.A(write_ack_i), .B(wr_done_i_N_430), .C(first_read_done), 
         .D(n2945[0]), .Z(n3840)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(929[10] 936[24])
    defparam i13263_4_lut.init = 16'h1333;
    LUT4 n5943_bdd_3_lut_4_lut (.A(count_i[3]), .B(n16432), .C(n16525), 
         .D(n16428), .Z(n16081)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;
    defparam n5943_bdd_3_lut_4_lut.init = 16'hff09;
    LUT4 i2_3_lut_4_lut (.A(read_ack_i), .B(n16431), .C(n4), .D(reset_bus_i), 
         .Z(n13408)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i2_3_lut_4_lut.init = 16'hfff1;
    LUT4 i13304_3_lut_4_lut (.A(n16527), .B(n16433), .C(n14622), .D(count_i_3__N_145), 
         .Z(n14491)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(568[30:45])
    defparam i13304_3_lut_4_lut.init = 16'heeef;
    LUT4 i13260_4_lut_4_lut (.A(n16382), .B(n16431), .C(n3086), .D(out_n_enable_11), 
         .Z(out_n_enable_10)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(338[13] 618[20])
    defparam i13260_4_lut_4_lut.init = 16'hdf00;
    PFUMX i13399 (.BLUT(n16082), .ALUT(n16081), .C0(n3086), .Z(n16083));
    LUT4 i1_2_lut_rep_355_2_lut (.A(count_i[1]), .B(count_i[0]), .Z(n16423)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(408[56:67])
    defparam i1_2_lut_rep_355_2_lut.init = 16'hdddd;
    LUT4 i1921_4_lut_4_lut (.A(n16431), .B(n16407), .C(data_buffer_i[4]), 
         .D(sda_reg), .Z(n319[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(1112[73:87])
    defparam i1921_4_lut_4_lut.init = 16'hf2d0;
    LUT4 i33_rep_302_3_lut_4_lut (.A(n16489), .B(n16497), .C(data_buffer_i[7]), 
         .D(sda_reg), .Z(n16046)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam i33_rep_302_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i36_rep_296_3_lut_4_lut (.A(n16526), .B(n16489), .C(data_buffer_i[4]), 
         .D(sda_reg), .Z(n16040)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(343[25:47])
    defparam i36_rep_296_3_lut_4_lut.init = 16'hf1e0;
    
endmodule
//
// Verilog Description of module filter
//

module filter (clk_div2, sda_out, i_sda) /* synthesis syn_module_defined=1 */ ;
    input clk_div2;
    input sda_out;
    output i_sda;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    
    wire in_d2, in_d1, in_d3, in_N_85, out_n, out_n_N_83;
    
    FD1S3AX in_d2_14 (.D(in_d1), .CK(clk_div2), .Q(in_d2)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=118 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(58[16] 62[10])
    defparam in_d2_14.GSR = "ENABLED";
    FD1S3AX in_d3_15 (.D(in_d2), .CK(clk_div2), .Q(in_d3)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=118 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(58[16] 62[10])
    defparam in_d3_15.GSR = "ENABLED";
    FD1S3AX in_d1_13 (.D(in_N_85), .CK(clk_div2), .Q(in_d1)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=118 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(58[16] 62[10])
    defparam in_d1_13.GSR = "ENABLED";
    LUT4 in_I_0_1_lut (.A(sda_out), .Z(in_N_85)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(59[19:22])
    defparam in_I_0_1_lut.init = 16'h5555;
    LUT4 out_n_I_0_1_lut (.A(out_n), .Z(i_sda)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(67[17:23])
    defparam out_n_I_0_1_lut.init = 16'h5555;
    FD1P3AX out_n_16 (.D(in_d3), .SP(out_n_N_83), .CK(clk_div2), .Q(out_n)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=118 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(71[16] 73[10])
    defparam out_n_16.GSR = "ENABLED";
    LUT4 in_d2_I_0_2_lut (.A(in_d2), .B(in_d3), .Z(out_n_N_83)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(71[20:34])
    defparam in_d2_I_0_2_lut.init = 16'h9999;
    
endmodule
//
// Verilog Description of module filter_U0
//

module filter_U0 (clk_div2, scl_out, out_n__inv, out_n, count_i_3__N_141, 
            rw_mode_i, addr_ack1_i, wr_done_i_N_430) /* synthesis syn_module_defined=1 */ ;
    input clk_div2;
    input scl_out;
    output out_n__inv;
    output out_n;
    input count_i_3__N_141;
    input rw_mode_i;
    input addr_ack1_i;
    output wr_done_i_N_430;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    wire out_n__inv /* synthesis is_inv_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(51[9:14])
    wire out_n /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_slave_top/i2cslave_controller_top/filter_scl_inst/out_n */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(51[9:14])
    
    wire in_d2, in_d1, in_d3, in_N_85, out_n_N_83;
    
    FD1S3AX in_d2_14 (.D(in_d1), .CK(clk_div2), .Q(in_d2)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=111 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(58[16] 62[10])
    defparam in_d2_14.GSR = "ENABLED";
    FD1S3AX in_d3_15 (.D(in_d2), .CK(clk_div2), .Q(in_d3)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=111 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(58[16] 62[10])
    defparam in_d3_15.GSR = "ENABLED";
    FD1S3AX in_d1_13 (.D(in_N_85), .CK(clk_div2), .Q(in_d1)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=111 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(58[16] 62[10])
    defparam in_d1_13.GSR = "ENABLED";
    LUT4 in_I_0_1_lut (.A(scl_out), .Z(in_N_85)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(59[19:22])
    defparam in_I_0_1_lut.init = 16'h5555;
    INV i13814 (.A(out_n), .Z(out_n__inv));
    FD1P3AX out_n_16 (.D(in_d3), .SP(out_n_N_83), .CK(clk_div2), .Q(out_n)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=111 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(71[16] 73[10])
    defparam out_n_16.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(out_n), .B(count_i_3__N_141), .C(rw_mode_i), 
         .D(addr_ack1_i), .Z(wr_done_i_N_430)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(67[17:23])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 in_d2_I_0_2_lut (.A(in_d2), .B(in_d3), .Z(out_n_N_83)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/filter.v(71[20:34])
    defparam in_d2_I_0_2_lut.init = 16'h9999;
    
endmodule
//
// Verilog Description of module reset_generator
//

module reset_generator (rstn_N_14, clk_50mhz_c, reset_n, reset_bus_i, 
            start_detect_i_N_352, n13407, n13408, count_i_3__N_145, 
            n13409, stop_detect_i, d_ff, n16517, n16518, n16408, 
            rstn_c, \next_state_i_3__N_181[0] , n4) /* synthesis syn_module_defined=1 */ ;
    input rstn_N_14;
    input clk_50mhz_c;
    output reset_n;
    input reset_bus_i;
    output start_detect_i_N_352;
    input n13407;
    input n13408;
    input count_i_3__N_145;
    output n13409;
    input stop_detect_i;
    input d_ff;
    output n16517;
    input n16518;
    output n16408;
    input rstn_c;
    input \next_state_i_3__N_181[0] ;
    output n4;
    
    wire clk_d2 /* synthesis is_clock=1, SET_AS_NETWORK=\reset_generator/clk_d2 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/reset_generator.v(45[8:14])
    wire clk_50mhz_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_50mhz_c */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(7[15:24])
    
    wire in_d2, in_d1, in_d3, clk_d2_N_16, reset_n_N_12;
    
    FD1S3DX in_d2_21 (.D(in_d1), .CK(clk_d2), .CD(rstn_N_14), .Q(in_d2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=120, LSE_RLINE=124 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/reset_generator.v(65[16] 69[10])
    defparam in_d2_21.GSR = "DISABLED";
    FD1S3DX in_d3_22 (.D(in_d2), .CK(clk_d2), .CD(rstn_N_14), .Q(in_d3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=120, LSE_RLINE=124 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/reset_generator.v(65[16] 69[10])
    defparam in_d3_22.GSR = "DISABLED";
    FD1S3DX clk_d2_19 (.D(clk_d2_N_16), .CK(clk_50mhz_c), .CD(rstn_N_14), 
            .Q(clk_d2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=120, LSE_RLINE=124 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/reset_generator.v(54[16] 56[10])
    defparam clk_d2_19.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(reset_n), .B(reset_bus_i), .Z(start_detect_i_N_352)) /* synthesis lut_function=((B)+!A) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/reset_generator.v(77[16] 79[10])
    defparam i1_2_lut.init = 16'hdddd;
    PFUMX i10901 (.BLUT(n13407), .ALUT(n13408), .C0(count_i_3__N_145), 
          .Z(n13409));
    LUT4 i13268_3_lut_rep_449 (.A(stop_detect_i), .B(reset_n), .C(d_ff), 
         .Z(n16517)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i13268_3_lut_rep_449.init = 16'h3b3b;
    LUT4 i1_2_lut_rep_340_4_lut (.A(stop_detect_i), .B(reset_n), .C(d_ff), 
         .D(n16518), .Z(n16408)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((D)+!B)) */ ;
    defparam i1_2_lut_rep_340_4_lut.init = 16'hff3b;
    FD1P3DX out_n_23 (.D(in_d3), .SP(reset_n_N_12), .CK(clk_d2), .CD(rstn_N_14), 
            .Q(reset_n)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=120, LSE_RLINE=124 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/reset_generator.v(77[16] 79[10])
    defparam out_n_23.GSR = "DISABLED";
    LUT4 clk_d2_I_0_1_lut (.A(clk_d2), .Z(clk_d2_N_16)) /* synthesis lut_function=(!(A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/reset_generator.v(55[20:27])
    defparam clk_d2_I_0_1_lut.init = 16'h5555;
    FD1S3DX in_d1_20 (.D(rstn_c), .CK(clk_d2), .CD(rstn_N_14), .Q(in_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=120, LSE_RLINE=124 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/reset_generator.v(65[16] 69[10])
    defparam in_d1_20.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_130 (.A(\next_state_i_3__N_181[0] ), .B(stop_detect_i), 
         .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/i2cslave_controller.v(141[18:29])
    defparam i1_2_lut_adj_130.init = 16'heeee;
    LUT4 in_d2_I_0_2_lut (.A(in_d2), .B(in_d3), .Z(reset_n_N_12)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/reset_generator.v(77[20:34])
    defparam in_d2_I_0_2_lut.init = 16'h9999;
    
endmodule
//
// Verilog Description of module limit_check
//

module limit_check (GND_net, clk_div2, laser_pulse_c, pulse_lower_limit_fail, 
            pulse_upper_limit_fail, rate_lower_limit_fail, rate_upper_limit_fail, 
            pulse_width_lower_limit, rate_upper_limit, pulse_width_upper_limit, 
            rate_lower_limit, \dynamic_control[0] , TA_shutdown_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_div2;
    input laser_pulse_c;
    output pulse_lower_limit_fail;
    output pulse_upper_limit_fail;
    output rate_lower_limit_fail;
    output rate_upper_limit_fail;
    input [31:0]pulse_width_lower_limit;
    input [31:0]rate_upper_limit;
    input [31:0]pulse_width_upper_limit;
    input [31:0]rate_lower_limit;
    input \dynamic_control[0] ;
    input TA_shutdown_c;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    
    logic_check logic_check (.GND_net(GND_net), .clk_div2(clk_div2), .laser_pulse_c(laser_pulse_c), 
            .pulse_lower_limit_fail(pulse_lower_limit_fail), .pulse_upper_limit_fail(pulse_upper_limit_fail), 
            .rate_lower_limit_fail(rate_lower_limit_fail), .rate_upper_limit_fail(rate_upper_limit_fail), 
            .pulse_width_lower_limit({pulse_width_lower_limit}), .rate_upper_limit({rate_upper_limit}), 
            .pulse_width_upper_limit({pulse_width_upper_limit}), .rate_lower_limit({rate_lower_limit}), 
            .\dynamic_control[0] (\dynamic_control[0] ), .TA_shutdown_c(TA_shutdown_c)) /* synthesis syn_module_defined=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/limit_check.v(37[13] 56[2])
    
endmodule
//
// Verilog Description of module logic_check
//

module logic_check (GND_net, clk_div2, laser_pulse_c, pulse_lower_limit_fail, 
            pulse_upper_limit_fail, rate_lower_limit_fail, rate_upper_limit_fail, 
            pulse_width_lower_limit, rate_upper_limit, pulse_width_upper_limit, 
            rate_lower_limit, \dynamic_control[0] , TA_shutdown_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_div2;
    input laser_pulse_c;
    output pulse_lower_limit_fail;
    output pulse_upper_limit_fail;
    output rate_lower_limit_fail;
    output rate_upper_limit_fail;
    input [31:0]pulse_width_lower_limit;
    input [31:0]rate_upper_limit;
    input [31:0]pulse_width_upper_limit;
    input [31:0]rate_lower_limit;
    input \dynamic_control[0] ;
    input TA_shutdown_c;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    
    wire n13118;
    wire [31:0]count;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(49[12:17])
    wire [31:0]count_31__N_1168;
    
    wire n13119;
    wire [3:0]state;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(47[12:17])
    
    wire n3782;
    wire [31:0]count_31__N_1099;
    
    wire laser_pulse_d1, pulse_lower_limit_fail_N_1280, pulse_upper_limit_fail_N_1294, 
        rate_lower_limit_fail_N_1299, rate_upper_limit_fail_N_1306, n32, 
        n16472, n34, n15733, n14982, n15731, n14984, n16547, n11, 
        n9, n15081, n15090, n16473, n16, n16474, n16476, n16475, 
        n14950, n14, n13130, n13131, n25, n28, n38, n15378, 
        n40, n28_adj_1644, n38_adj_1645, n15180, n40_adj_1646, n28_adj_1647, 
        n38_adj_1648, n40_adj_1649, n28_adj_1650, n38_adj_1651, n14777, 
        n40_adj_1652, n26, n16477, n24, n16478, n16479, n15019, 
        n42, n16480, n12, n16481, n30, n16482, n14977, n14883, 
        n6, n16483, n16484, n14921, n18, n16485, n14959, n16486, 
        n8, n16487, n15001, n16488, n10, n16490, n18_adj_1653, 
        n56, n15722, n14868, n16491, n16495, n16496, n14850, n22, 
        n50, n16492, n20, n16493, n52, n58, n15469, n60, n52_adj_1654, 
        n58_adj_1655, n15271, n60_adj_1656, n54, n52_adj_1657, n58_adj_1658, 
        n15073, n60_adj_1659, n52_adj_1660, n58_adj_1661, n60_adj_1662, 
        n16494, n42_adj_1663, n44, n15741, n14821, n54_adj_1664, 
        n56_adj_1665, n15473, n24_adj_1666, n46, n15422, n48, n30_adj_1667, 
        n36, n15380, n16498, n32_adj_1668, n24_adj_1669, n46_adj_1670, 
        n15224, n48_adj_1671, n16499, n34_adj_1672, n30_adj_1673, 
        n36_adj_1674, n15182, n15664, n15656, n14779, n16500, n46_adj_1675, 
        n15026, n48_adj_1676, n16_adj_1677, n36_adj_1678, n16501, 
        n24_adj_1679, n16502, n16503, n14814, n46_adj_1680, n48_adj_1681, 
        n16504, n54_adj_1682, n56_adj_1683, n15275, n16506, n16505, 
        n14745, n30_adj_1684, n36_adj_1685, n16450, n16449, n16448, 
        n15348, n15712, n16455, n16454, n16453, n15332, n16457, 
        n16452, n16451, n11_adj_1686, n14_adj_1687, n54_adj_1688, 
        n56_adj_1689, n15077, n26_adj_1690, n16507, n12_adj_1691, 
        n16508, n16549, n16555, n16554, n15150, n15739, n13433, 
        n5697, count_31__N_1131, n13286, n16553, n16558, n16557, 
        n15134, n16556, n16543, n16509, n14772, n16510, n14872, 
        n14754, n16471, n14952, n14936, n11_adj_1692, n10_adj_1693, 
        n13129, n16511, n8_adj_1694, n16512, n14796, n16513, n16514, 
        n14716, n14747, n14731, n16515, n11_adj_1695, n14678, n6_adj_1696, 
        n16468, n44_adj_1697, n16551, n15175, n34_adj_1698, n10_adj_1699, 
        n16538, n15217, n44_adj_1700, n8_adj_1701, n16441, n16440, 
        n16439, n15440, n15695, n16438, n16437, n25_adj_1702, n15317, 
        n16442, n15373, n34_adj_1703, n10_adj_1704, n16447, n15415, 
        n44_adj_1705, n8_adj_1706, n16534, n16533, n16532, n15242, 
        n15725, n16540, n16539, n15119, n16467, n16466, n16465, 
        n15044, n15672, n16470, n16469, n25_adj_1707, n13116, n13117, 
        n13128, n14839, n25_adj_1708, n13127, n13126, n13125, n16436, 
        n16446, n16445, n16444, n15397, n15706, n15355, n15708, 
        n4, n16537, n16536, n16535, n15199, n15735, n13124, n15157, 
        n15737, n15710, n4_adj_1709, n15122, n15137, n14_adj_1710, 
        n26_adj_1711, n16531, n13123, n13122, n16464, n18_adj_1712, 
        n15253, n22_adj_1713, n50_adj_1714, n6_adj_1715, n50_adj_1716, 
        n15451, n20_adj_1717, n16_adj_1718, n42_adj_1719, n14557, 
        rate_upper_limit_fail_N_1309, pulse_lower_limit_fail_N_1286, pulse_lower_limit_fail_N_1285, 
        n16405, n13121, n14577, n16463, n4_adj_1720, n14579, n12_adj_1721, 
        n4_adj_1722, n26_adj_1723, n15346, n6_adj_1724, n13120, n16541, 
        n15148, n16542, n50_adj_1725, n15055, n4_adj_1726, n3735, 
        n16544, n18_adj_1727, n16545, n4_adj_1728, n22_adj_1729, n20_adj_1730, 
        n32_adj_1731, n62, n15060, n15062, n15033, n15035, n15015, 
        n14994, n14914, n9_adj_1732, n15004, n14989, n14962, n14939, 
        n14924, n14905, n14892, n32_adj_1733, n16443, n16_adj_1734, 
        n15112, n16552, n62_adj_1735, n14855, n14857, n14828, n14830, 
        n14810, n14789, n14709, n9_adj_1736, n14799, n15202, n15231, 
        n14784, n14757, n14734, n14719, n14700, n14687, n12_adj_1737, 
        n42_adj_1738, n12_adj_1739, n14_adj_1740, n12_adj_1741, n2, 
        n8_adj_1742, n3, n11_adj_1743, n355, n16456, n16458, n16459, 
        n15103, n16460, n16461, n2_adj_1744, n62_adj_1745, n15465, 
        n15458, n15436, n22_adj_1746, n15187, n15431, n15411, n15390, 
        n15310, n9_adj_1747, n15409, n15388, n15367, n15342, n15327, 
        n15306, n15293, n15282, n15160, n20_adj_1748, n62_adj_1749, 
        n15258, n15260, n15233, n15213, n15192;
    
    CCU2D add_11_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13118), 
          .COUT(n13119), .S0(count_31__N_1168[5]), .S1(count_31__N_1168[6]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_7.INIT0 = 16'h5aaa;
    defparam add_11_7.INIT1 = 16'h5aaa;
    defparam add_11_7.INJECT1_0 = "NO";
    defparam add_11_7.INJECT1_1 = "NO";
    FD1S3AX state_FSM_i0 (.D(n3782), .CK(clk_div2), .Q(state[2]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3AX count_i0 (.D(count_31__N_1099[0]), .CK(clk_div2), .Q(count[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i0.GSR = "ENABLED";
    FD1S3AX laser_pulse_d1_109 (.D(laser_pulse_c), .CK(clk_div2), .Q(laser_pulse_d1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam laser_pulse_d1_109.GSR = "ENABLED";
    FD1S3AX pulse_lower_limit_fail_116 (.D(pulse_lower_limit_fail_N_1280), 
            .CK(clk_div2), .Q(pulse_lower_limit_fail)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam pulse_lower_limit_fail_116.GSR = "ENABLED";
    FD1S3AX pulse_upper_limit_fail_117 (.D(pulse_upper_limit_fail_N_1294), 
            .CK(clk_div2), .Q(pulse_upper_limit_fail)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam pulse_upper_limit_fail_117.GSR = "ENABLED";
    FD1S3AX rate_lower_limit_fail_118 (.D(rate_lower_limit_fail_N_1299), .CK(clk_div2), 
            .Q(rate_lower_limit_fail)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam rate_lower_limit_fail_118.GSR = "ENABLED";
    FD1S3AX rate_upper_limit_fail_119 (.D(rate_upper_limit_fail_N_1306), .CK(clk_div2), 
            .Q(rate_upper_limit_fail)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam rate_upper_limit_fail_119.GSR = "ENABLED";
    LUT4 count_31__I_0_142_i32_3_lut_3_lut (.A(count[19]), .B(pulse_width_lower_limit[19]), 
         .C(pulse_width_lower_limit[18]), .Z(n32)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i41_2_lut_rep_404 (.A(count[20]), .B(pulse_width_lower_limit[20]), 
         .Z(n16472)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i41_2_lut_rep_404.init = 16'h6666;
    LUT4 count_31__I_0_142_i34_3_lut_3_lut (.A(count[20]), .B(pulse_width_lower_limit[20]), 
         .C(n32), .Z(n34)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i13375_2_lut_3_lut (.A(count[20]), .B(pulse_width_lower_limit[20]), 
         .C(n15733), .Z(n14982)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13375_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i13373_2_lut_3_lut (.A(count[20]), .B(pulse_width_lower_limit[20]), 
         .C(n15731), .Z(n14984)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13373_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i12582_4_lut (.A(n16547), .B(n11), .C(n9), .D(n15081), .Z(n15090)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12582_4_lut.init = 16'h1011;
    LUT4 count_31__I_0_142_i43_2_lut_rep_405 (.A(count[21]), .B(pulse_width_lower_limit[21]), 
         .Z(n16473)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i43_2_lut_rep_405.init = 16'h6666;
    LUT4 count_31__I_0_142_i16_3_lut_3_lut (.A(count[21]), .B(pulse_width_lower_limit[21]), 
         .C(pulse_width_lower_limit[9]), .Z(n16)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i27_2_lut_rep_406 (.A(count[13]), .B(pulse_width_lower_limit[13]), 
         .Z(n16474)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i27_2_lut_rep_406.init = 16'h6666;
    LUT4 i13265_2_lut_3_lut_4_lut (.A(count[13]), .B(pulse_width_lower_limit[13]), 
         .C(n16476), .D(n16475), .Z(n14950)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13265_2_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 count_31__I_0_142_i29_2_lut_rep_407 (.A(count[14]), .B(pulse_width_lower_limit[14]), 
         .Z(n16475)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i29_2_lut_rep_407.init = 16'h6666;
    LUT4 count_31__I_0_142_i14_3_lut_3_lut (.A(count[14]), .B(pulse_width_lower_limit[14]), 
         .C(pulse_width_lower_limit[13]), .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i14_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_11_31 (.A0(count[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13130), .COUT(n13131), .S0(count_31__N_1168[29]), .S1(count_31__N_1168[30]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_31.INIT0 = 16'h5aaa;
    defparam add_11_31.INIT1 = 16'h5aaa;
    defparam add_11_31.INJECT1_0 = "NO";
    defparam add_11_31.INJECT1_1 = "NO";
    LUT4 rate_upper_limit_31__I_0_i11_2_lut (.A(rate_upper_limit[5]), .B(count[5]), 
         .Z(n11)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i11_2_lut.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i9_2_lut (.A(rate_upper_limit[4]), .B(count[4]), 
         .Z(n9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i9_2_lut.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i25_2_lut (.A(rate_upper_limit[12]), .B(count[12]), 
         .Z(n25)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i25_2_lut.init = 16'h6666;
    L6MUX21 count_31__I_0_i40 (.D0(n28), .D1(n38), .SD(n15378), .Z(n40)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    L6MUX21 rate_upper_limit_31__I_0_i40 (.D0(n28_adj_1644), .D1(n38_adj_1645), 
            .SD(n15180), .Z(n40_adj_1646)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    L6MUX21 count_31__I_0_142_i40 (.D0(n28_adj_1647), .D1(n38_adj_1648), 
            .SD(n14982), .Z(n40_adj_1649)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    L6MUX21 pulse_width_upper_limit_31__I_0_i40 (.D0(n28_adj_1650), .D1(n38_adj_1651), 
            .SD(n14777), .Z(n40_adj_1652)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 count_31__I_0_142_i31_2_lut_rep_408 (.A(count[15]), .B(pulse_width_lower_limit[15]), 
         .Z(n16476)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i31_2_lut_rep_408.init = 16'h6666;
    LUT4 count_31__I_0_142_i26_3_lut_3_lut (.A(count[15]), .B(pulse_width_lower_limit[15]), 
         .C(n14), .Z(n26)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i45_2_lut_rep_409 (.A(count[22]), .B(pulse_width_lower_limit[22]), 
         .Z(n16477)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i45_2_lut_rep_409.init = 16'h6666;
    LUT4 count_31__I_0_142_i24_3_lut_3_lut (.A(count[22]), .B(pulse_width_lower_limit[22]), 
         .C(n16), .Z(n24)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i47_2_lut_rep_410 (.A(count[23]), .B(pulse_width_lower_limit[23]), 
         .Z(n16478)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i47_2_lut_rep_410.init = 16'h6666;
    LUT4 count_31__I_0_142_i49_2_lut_rep_411 (.A(count[24]), .B(pulse_width_lower_limit[24]), 
         .Z(n16479)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i49_2_lut_rep_411.init = 16'h6666;
    LUT4 i12511_2_lut_3_lut_4_lut (.A(count[24]), .B(pulse_width_lower_limit[24]), 
         .C(pulse_width_lower_limit[23]), .D(count[23]), .Z(n15019)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12511_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 count_31__I_0_142_i42_3_lut_3_lut (.A(count[24]), .B(pulse_width_lower_limit[24]), 
         .C(pulse_width_lower_limit[23]), .Z(n42)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i33_2_lut_rep_412 (.A(count[16]), .B(pulse_width_lower_limit[16]), 
         .Z(n16480)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i33_2_lut_rep_412.init = 16'h6666;
    LUT4 count_31__I_0_142_i12_3_lut_3_lut (.A(count[16]), .B(pulse_width_lower_limit[16]), 
         .C(pulse_width_lower_limit[7]), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i35_2_lut_rep_413 (.A(count[17]), .B(pulse_width_lower_limit[17]), 
         .Z(n16481)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i35_2_lut_rep_413.init = 16'h6666;
    LUT4 count_31__I_0_142_i30_3_lut_3_lut (.A(count[17]), .B(pulse_width_lower_limit[17]), 
         .C(n12), .Z(n30)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i37_2_lut_rep_414 (.A(count[18]), .B(pulse_width_lower_limit[18]), 
         .Z(n16482)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i37_2_lut_rep_414.init = 16'h6666;
    LUT4 i12469_2_lut_3_lut_4_lut (.A(count[18]), .B(pulse_width_lower_limit[18]), 
         .C(pulse_width_lower_limit[19]), .D(count[19]), .Z(n14977)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12469_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i12375_3_lut_4_lut (.A(count[3]), .B(pulse_width_lower_limit[3]), 
         .C(pulse_width_lower_limit[2]), .D(count[2]), .Z(n14883)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12375_3_lut_4_lut.init = 16'h9009;
    LUT4 count_31__I_0_142_i6_3_lut_3_lut (.A(count[3]), .B(pulse_width_lower_limit[3]), 
         .C(pulse_width_lower_limit[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i21_2_lut_rep_415 (.A(count[10]), .B(pulse_width_lower_limit[10]), 
         .Z(n16483)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i21_2_lut_rep_415.init = 16'h6666;
    LUT4 count_31__I_0_142_i23_2_lut_rep_416 (.A(count[11]), .B(pulse_width_lower_limit[11]), 
         .Z(n16484)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i23_2_lut_rep_416.init = 16'h6666;
    LUT4 i12413_2_lut_3_lut_4_lut (.A(count[11]), .B(pulse_width_lower_limit[11]), 
         .C(pulse_width_lower_limit[10]), .D(count[10]), .Z(n14921)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12413_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 count_31__I_0_142_i18_3_lut_3_lut (.A(count[11]), .B(pulse_width_lower_limit[11]), 
         .C(pulse_width_lower_limit[10]), .Z(n18)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i15_2_lut_rep_417 (.A(count[7]), .B(pulse_width_lower_limit[7]), 
         .Z(n16485)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i15_2_lut_rep_417.init = 16'h6666;
    LUT4 i12451_2_lut_3_lut_4_lut (.A(count[7]), .B(pulse_width_lower_limit[7]), 
         .C(pulse_width_lower_limit[16]), .D(count[16]), .Z(n14959)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12451_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 count_31__I_0_142_i17_2_lut_rep_418 (.A(count[8]), .B(pulse_width_lower_limit[8]), 
         .Z(n16486)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i17_2_lut_rep_418.init = 16'h6666;
    LUT4 count_31__I_0_142_i8_3_lut_3_lut (.A(count[8]), .B(pulse_width_lower_limit[8]), 
         .C(pulse_width_lower_limit[4]), .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i19_2_lut_rep_419 (.A(count[9]), .B(pulse_width_lower_limit[9]), 
         .Z(n16487)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i19_2_lut_rep_419.init = 16'h6666;
    LUT4 i12493_2_lut_3_lut_4_lut (.A(count[9]), .B(pulse_width_lower_limit[9]), 
         .C(pulse_width_lower_limit[21]), .D(count[21]), .Z(n15001)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12493_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 count_31__I_0_142_i13_2_lut_rep_420 (.A(count[6]), .B(pulse_width_lower_limit[6]), 
         .Z(n16488)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i13_2_lut_rep_420.init = 16'h6666;
    LUT4 count_31__I_0_142_i10_3_lut_3_lut (.A(count[6]), .B(pulse_width_lower_limit[6]), 
         .C(pulse_width_lower_limit[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i63_2_lut_rep_422 (.A(pulse_width_upper_limit[31]), 
         .B(count[31]), .Z(n16490)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i63_2_lut_rep_422.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i56_3_lut_3_lut (.A(pulse_width_upper_limit[31]), 
         .B(count[31]), .C(n18_adj_1653), .Z(n56)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i56_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i13364_2_lut_3_lut (.A(pulse_width_upper_limit[31]), .B(count[31]), 
         .C(n15722), .Z(n14868)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13364_2_lut_3_lut.init = 16'hf6f6;
    LUT4 pulse_width_upper_limit_31__I_0_i57_2_lut_rep_423 (.A(pulse_width_upper_limit[28]), 
         .B(count[28]), .Z(n16491)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i57_2_lut_rep_423.init = 16'h6666;
    LUT4 i13369_2_lut_3_lut_4_lut (.A(pulse_width_upper_limit[28]), .B(count[28]), 
         .C(n16495), .D(n16496), .Z(n14850)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13369_2_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 pulse_width_upper_limit_31__I_0_i50_3_lut_3_lut (.A(pulse_width_upper_limit[28]), 
         .B(count[28]), .C(n22), .Z(n50)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i50_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i59_2_lut_rep_424 (.A(pulse_width_upper_limit[29]), 
         .B(count[29]), .Z(n16492)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i59_2_lut_rep_424.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i20_3_lut_3_lut (.A(pulse_width_upper_limit[29]), 
         .B(count[29]), .C(count[12]), .Z(n20)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i61_2_lut_rep_425 (.A(pulse_width_upper_limit[30]), 
         .B(count[30]), .Z(n16493)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i61_2_lut_rep_425.init = 16'h6666;
    L6MUX21 count_31__I_0_i60 (.D0(n52), .D1(n58), .SD(n15469), .Z(n60)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    L6MUX21 rate_upper_limit_31__I_0_i60 (.D0(n52_adj_1654), .D1(n58_adj_1655), 
            .SD(n15271), .Z(n60_adj_1656)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 pulse_width_upper_limit_31__I_0_i54_3_lut_3_lut (.A(pulse_width_upper_limit[30]), 
         .B(count[30]), .C(n20), .Z(n54)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i54_3_lut_3_lut.init = 16'hd4d4;
    L6MUX21 count_31__I_0_142_i60 (.D0(n52_adj_1657), .D1(n58_adj_1658), 
            .SD(n15073), .Z(n60_adj_1659)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    L6MUX21 pulse_width_upper_limit_31__I_0_i60 (.D0(n52_adj_1660), .D1(n58_adj_1661), 
            .SD(n14868), .Z(n60_adj_1662)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 pulse_width_upper_limit_31__I_0_i51_2_lut_rep_426 (.A(pulse_width_upper_limit[25]), 
         .B(count[25]), .Z(n16494)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i51_2_lut_rep_426.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i44_3_lut_3_lut (.A(pulse_width_upper_limit[25]), 
         .B(count[25]), .C(n42_adj_1663), .Z(n44)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i13383_2_lut_3_lut (.A(pulse_width_upper_limit[25]), .B(count[25]), 
         .C(n15741), .Z(n14821)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13383_2_lut_3_lut.init = 16'hf6f6;
    LUT4 pulse_width_upper_limit_31__I_0_i53_2_lut_rep_427 (.A(pulse_width_upper_limit[26]), 
         .B(count[26]), .Z(n16495)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i53_2_lut_rep_427.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i55_2_lut_rep_428 (.A(pulse_width_upper_limit[27]), 
         .B(count[27]), .Z(n16496)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i55_2_lut_rep_428.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i22_3_lut_3_lut (.A(pulse_width_upper_limit[27]), 
         .B(count[27]), .C(count[26]), .Z(n22)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i22_3_lut_3_lut.init = 16'hd4d4;
    PFUMX count_31__I_0_i58 (.BLUT(n54_adj_1664), .ALUT(n56_adj_1665), .C0(n15473), 
          .Z(n58)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    PFUMX count_31__I_0_i48 (.BLUT(n24_adj_1666), .ALUT(n46), .C0(n15422), 
          .Z(n48)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    PFUMX count_31__I_0_i38 (.BLUT(n30_adj_1667), .ALUT(n36), .C0(n15380), 
          .Z(n38)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 pulse_width_upper_limit_31__I_0_i39_2_lut_rep_430 (.A(pulse_width_upper_limit[19]), 
         .B(count[19]), .Z(n16498)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i39_2_lut_rep_430.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i32_3_lut_3_lut (.A(pulse_width_upper_limit[19]), 
         .B(count[19]), .C(count[18]), .Z(n32_adj_1668)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i32_3_lut_3_lut.init = 16'hd4d4;
    PFUMX rate_upper_limit_31__I_0_i48 (.BLUT(n24_adj_1669), .ALUT(n46_adj_1670), 
          .C0(n15224), .Z(n48_adj_1671)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 pulse_width_upper_limit_31__I_0_i41_2_lut_rep_431 (.A(pulse_width_upper_limit[20]), 
         .B(count[20]), .Z(n16499)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i41_2_lut_rep_431.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i34_3_lut_3_lut (.A(pulse_width_upper_limit[20]), 
         .B(count[20]), .C(n32_adj_1668), .Z(n34_adj_1672)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i34_3_lut_3_lut.init = 16'hd4d4;
    PFUMX rate_upper_limit_31__I_0_i38 (.BLUT(n30_adj_1673), .ALUT(n36_adj_1674), 
          .C0(n15182), .Z(n38_adj_1645)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 i13306_2_lut_3_lut (.A(pulse_width_upper_limit[20]), .B(count[20]), 
         .C(n15664), .Z(n14777)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13306_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i13298_2_lut_3_lut (.A(pulse_width_upper_limit[20]), .B(count[20]), 
         .C(n15656), .Z(n14779)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13298_2_lut_3_lut.init = 16'hf6f6;
    LUT4 pulse_width_upper_limit_31__I_0_i43_2_lut_rep_432 (.A(pulse_width_upper_limit[21]), 
         .B(count[21]), .Z(n16500)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i43_2_lut_rep_432.init = 16'h6666;
    PFUMX count_31__I_0_142_i48 (.BLUT(n24), .ALUT(n46_adj_1675), .C0(n15026), 
          .Z(n48_adj_1676)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 pulse_width_upper_limit_31__I_0_i16_3_lut_3_lut (.A(pulse_width_upper_limit[21]), 
         .B(count[21]), .C(count[9]), .Z(n16_adj_1677)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i16_3_lut_3_lut.init = 16'hd4d4;
    PFUMX count_31__I_0_142_i38 (.BLUT(n30), .ALUT(n36_adj_1678), .C0(n14984), 
          .Z(n38_adj_1648)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 pulse_width_upper_limit_31__I_0_i45_2_lut_rep_433 (.A(pulse_width_upper_limit[22]), 
         .B(count[22]), .Z(n16501)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i45_2_lut_rep_433.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i24_3_lut_3_lut (.A(pulse_width_upper_limit[22]), 
         .B(count[22]), .C(n16_adj_1677), .Z(n24_adj_1679)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i47_2_lut_rep_434 (.A(pulse_width_upper_limit[23]), 
         .B(count[23]), .Z(n16502)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i47_2_lut_rep_434.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i49_2_lut_rep_435 (.A(pulse_width_upper_limit[24]), 
         .B(count[24]), .Z(n16503)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i49_2_lut_rep_435.init = 16'h6666;
    LUT4 i12306_2_lut_3_lut_4_lut (.A(pulse_width_upper_limit[24]), .B(count[24]), 
         .C(count[23]), .D(pulse_width_upper_limit[23]), .Z(n14814)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12306_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 pulse_width_upper_limit_31__I_0_i42_3_lut_3_lut (.A(pulse_width_upper_limit[24]), 
         .B(count[24]), .C(count[23]), .Z(n42_adj_1663)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i42_3_lut_3_lut.init = 16'hd4d4;
    PFUMX pulse_width_upper_limit_31__I_0_i48 (.BLUT(n24_adj_1679), .ALUT(n46_adj_1680), 
          .C0(n14821), .Z(n48_adj_1681)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 pulse_width_upper_limit_31__I_0_i27_2_lut_rep_436 (.A(pulse_width_upper_limit[13]), 
         .B(count[13]), .Z(n16504)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i27_2_lut_rep_436.init = 16'h6666;
    PFUMX rate_upper_limit_31__I_0_i58 (.BLUT(n54_adj_1682), .ALUT(n56_adj_1683), 
          .C0(n15275), .Z(n58_adj_1655)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 i13356_2_lut_3_lut_4_lut (.A(pulse_width_upper_limit[13]), .B(count[13]), 
         .C(n16506), .D(n16505), .Z(n14745)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13356_2_lut_3_lut_4_lut.init = 16'hfff6;
    PFUMX pulse_width_upper_limit_31__I_0_i38 (.BLUT(n30_adj_1684), .ALUT(n36_adj_1685), 
          .C0(n14779), .Z(n38_adj_1651)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 pulse_width_upper_limit_31__I_0_i29_2_lut_rep_437 (.A(pulse_width_upper_limit[14]), 
         .B(count[14]), .Z(n16505)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i29_2_lut_rep_437.init = 16'h6666;
    LUT4 i13353_4_lut (.A(n16450), .B(n16449), .C(n16448), .D(n15348), 
         .Z(n15712)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13353_4_lut.init = 16'hfeff;
    LUT4 i12840_4_lut (.A(n16455), .B(n16454), .C(n16453), .D(n15332), 
         .Z(n15348)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12840_4_lut.init = 16'h5455;
    LUT4 i12824_4_lut (.A(n16457), .B(n16452), .C(n16451), .D(n11_adj_1686), 
         .Z(n15332)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12824_4_lut.init = 16'h5554;
    LUT4 pulse_width_upper_limit_31__I_0_i14_3_lut_3_lut (.A(pulse_width_upper_limit[14]), 
         .B(count[14]), .C(count[13]), .Z(n14_adj_1687)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i31_2_lut_rep_438 (.A(pulse_width_upper_limit[15]), 
         .B(count[15]), .Z(n16506)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i31_2_lut_rep_438.init = 16'h6666;
    PFUMX count_31__I_0_142_i58 (.BLUT(n54_adj_1688), .ALUT(n56_adj_1689), 
          .C0(n15077), .Z(n58_adj_1658)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 pulse_width_upper_limit_31__I_0_i26_3_lut_3_lut (.A(pulse_width_upper_limit[15]), 
         .B(count[15]), .C(n14_adj_1687), .Z(n26_adj_1690)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i33_2_lut_rep_439 (.A(pulse_width_upper_limit[16]), 
         .B(count[16]), .Z(n16507)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i33_2_lut_rep_439.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i12_3_lut_3_lut (.A(pulse_width_upper_limit[16]), 
         .B(count[16]), .C(count[7]), .Z(n12_adj_1691)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i35_2_lut_rep_440 (.A(pulse_width_upper_limit[17]), 
         .B(count[17]), .Z(n16508)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i35_2_lut_rep_440.init = 16'h6666;
    LUT4 i13380_4_lut (.A(n16549), .B(n16555), .C(n16554), .D(n15150), 
         .Z(n15739)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13380_4_lut.init = 16'hfeff;
    FD1S3AX state_FSM_i1 (.D(n13433), .CK(clk_div2), .Q(state[1]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n5697), .CK(clk_div2), .Q(state[0]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AY state_FSM_i3 (.D(n13286), .CK(clk_div2), .Q(count_31__N_1131));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX count_i1 (.D(count_31__N_1099[1]), .CK(clk_div2), .Q(count[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i1.GSR = "ENABLED";
    LUT4 i12642_4_lut (.A(n16553), .B(n16558), .C(n16557), .D(n15134), 
         .Z(n15150)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12642_4_lut.init = 16'h5455;
    FD1S3AX count_i2 (.D(count_31__N_1099[2]), .CK(clk_div2), .Q(count[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i2.GSR = "ENABLED";
    FD1S3AX count_i3 (.D(count_31__N_1099[3]), .CK(clk_div2), .Q(count[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i3.GSR = "ENABLED";
    FD1S3AX count_i4 (.D(count_31__N_1099[4]), .CK(clk_div2), .Q(count[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i4.GSR = "ENABLED";
    FD1S3AX count_i5 (.D(count_31__N_1099[5]), .CK(clk_div2), .Q(count[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i5.GSR = "ENABLED";
    FD1S3AX count_i6 (.D(count_31__N_1099[6]), .CK(clk_div2), .Q(count[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i6.GSR = "ENABLED";
    FD1S3AX count_i7 (.D(count_31__N_1099[7]), .CK(clk_div2), .Q(count[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i7.GSR = "ENABLED";
    FD1S3AX count_i8 (.D(count_31__N_1099[8]), .CK(clk_div2), .Q(count[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i8.GSR = "ENABLED";
    FD1S3AX count_i9 (.D(count_31__N_1099[9]), .CK(clk_div2), .Q(count[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i9.GSR = "ENABLED";
    FD1S3AX count_i10 (.D(count_31__N_1099[10]), .CK(clk_div2), .Q(count[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i10.GSR = "ENABLED";
    FD1S3AX count_i11 (.D(count_31__N_1099[11]), .CK(clk_div2), .Q(count[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i11.GSR = "ENABLED";
    FD1S3AX count_i12 (.D(count_31__N_1099[12]), .CK(clk_div2), .Q(count[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i12.GSR = "ENABLED";
    FD1S3AX count_i13 (.D(count_31__N_1099[13]), .CK(clk_div2), .Q(count[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i13.GSR = "ENABLED";
    FD1S3AX count_i14 (.D(count_31__N_1099[14]), .CK(clk_div2), .Q(count[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i14.GSR = "ENABLED";
    FD1S3AX count_i15 (.D(count_31__N_1099[15]), .CK(clk_div2), .Q(count[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i15.GSR = "ENABLED";
    FD1S3AX count_i16 (.D(count_31__N_1099[16]), .CK(clk_div2), .Q(count[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i16.GSR = "ENABLED";
    FD1S3AX count_i17 (.D(count_31__N_1099[17]), .CK(clk_div2), .Q(count[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i17.GSR = "ENABLED";
    FD1S3AX count_i18 (.D(count_31__N_1099[18]), .CK(clk_div2), .Q(count[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i18.GSR = "ENABLED";
    FD1S3AX count_i19 (.D(count_31__N_1099[19]), .CK(clk_div2), .Q(count[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i19.GSR = "ENABLED";
    FD1S3AX count_i20 (.D(count_31__N_1099[20]), .CK(clk_div2), .Q(count[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i20.GSR = "ENABLED";
    FD1S3AX count_i21 (.D(count_31__N_1099[21]), .CK(clk_div2), .Q(count[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i21.GSR = "ENABLED";
    FD1S3AX count_i22 (.D(count_31__N_1099[22]), .CK(clk_div2), .Q(count[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i22.GSR = "ENABLED";
    FD1S3AX count_i23 (.D(count_31__N_1099[23]), .CK(clk_div2), .Q(count[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i23.GSR = "ENABLED";
    FD1S3AX count_i24 (.D(count_31__N_1099[24]), .CK(clk_div2), .Q(count[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i24.GSR = "ENABLED";
    FD1S3AX count_i25 (.D(count_31__N_1099[25]), .CK(clk_div2), .Q(count[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i25.GSR = "ENABLED";
    FD1S3AX count_i26 (.D(count_31__N_1099[26]), .CK(clk_div2), .Q(count[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i26.GSR = "ENABLED";
    FD1S3AX count_i27 (.D(count_31__N_1099[27]), .CK(clk_div2), .Q(count[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i27.GSR = "ENABLED";
    FD1S3AX count_i28 (.D(count_31__N_1099[28]), .CK(clk_div2), .Q(count[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i28.GSR = "ENABLED";
    FD1S3AX count_i29 (.D(count_31__N_1099[29]), .CK(clk_div2), .Q(count[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i29.GSR = "ENABLED";
    FD1S3AX count_i30 (.D(count_31__N_1099[30]), .CK(clk_div2), .Q(count[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i30.GSR = "ENABLED";
    FD1S3AX count_i31 (.D(count_31__N_1099[31]), .CK(clk_div2), .Q(count[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_i31.GSR = "ENABLED";
    LUT4 i12626_4_lut (.A(n16556), .B(n16543), .C(n16547), .D(n11), 
         .Z(n15134)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12626_4_lut.init = 16'h5554;
    LUT4 pulse_width_upper_limit_31__I_0_i30_3_lut_3_lut (.A(pulse_width_upper_limit[17]), 
         .B(count[17]), .C(n12_adj_1691), .Z(n30_adj_1684)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i37_2_lut_rep_441 (.A(pulse_width_upper_limit[18]), 
         .B(count[18]), .Z(n16509)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i37_2_lut_rep_441.init = 16'h6666;
    LUT4 i12264_2_lut_3_lut_4_lut (.A(pulse_width_upper_limit[18]), .B(count[18]), 
         .C(count[19]), .D(pulse_width_upper_limit[19]), .Z(n14772)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12264_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 pulse_width_upper_limit_31__I_0_i15_2_lut_rep_442 (.A(pulse_width_upper_limit[7]), 
         .B(count[7]), .Z(n16510)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i15_2_lut_rep_442.init = 16'h6666;
    PFUMX pulse_width_upper_limit_31__I_0_i58 (.BLUT(n54), .ALUT(n56), .C0(n14872), 
          .Z(n58_adj_1661)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 i12246_2_lut_3_lut_4_lut (.A(pulse_width_upper_limit[7]), .B(count[7]), 
         .C(count[16]), .D(pulse_width_upper_limit[16]), .Z(n14754)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12246_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i13374_4_lut (.A(n16471), .B(n16482), .C(n16481), .D(n14952), 
         .Z(n15733)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13374_4_lut.init = 16'hfeff;
    LUT4 i12444_4_lut (.A(n16480), .B(n16476), .C(n16475), .D(n14936), 
         .Z(n14952)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12444_4_lut.init = 16'h5455;
    LUT4 i12428_4_lut (.A(n16474), .B(n16485), .C(n16488), .D(n11_adj_1692), 
         .Z(n14936)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12428_4_lut.init = 16'h5554;
    LUT4 i13207_4_lut_4_lut (.A(n16499), .B(n14772), .C(n34_adj_1672), 
         .D(n10_adj_1693), .Z(n36_adj_1685)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13207_4_lut_4_lut.init = 16'hf4b0;
    CCU2D add_11_29 (.A0(count[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13129), .COUT(n13130), .S0(count_31__N_1168[27]), .S1(count_31__N_1168[28]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_29.INIT0 = 16'h5aaa;
    defparam add_11_29.INIT1 = 16'h5aaa;
    defparam add_11_29.INJECT1_0 = "NO";
    defparam add_11_29.INJECT1_1 = "NO";
    LUT4 pulse_width_upper_limit_31__I_0_i17_2_lut_rep_443 (.A(pulse_width_upper_limit[8]), 
         .B(count[8]), .Z(n16511)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i17_2_lut_rep_443.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i8_3_lut_3_lut (.A(pulse_width_upper_limit[8]), 
         .B(count[8]), .C(count[4]), .Z(n8_adj_1694)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i19_2_lut_rep_444 (.A(pulse_width_upper_limit[9]), 
         .B(count[9]), .Z(n16512)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i19_2_lut_rep_444.init = 16'h6666;
    LUT4 i12288_2_lut_3_lut_4_lut (.A(pulse_width_upper_limit[9]), .B(count[9]), 
         .C(count[21]), .D(pulse_width_upper_limit[21]), .Z(n14796)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12288_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 pulse_width_upper_limit_31__I_0_i21_2_lut_rep_445 (.A(pulse_width_upper_limit[10]), 
         .B(count[10]), .Z(n16513)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i21_2_lut_rep_445.init = 16'h6666;
    LUT4 i13209_4_lut_4_lut (.A(n16494), .B(n14814), .C(n44), .D(n8_adj_1694), 
         .Z(n46_adj_1680)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13209_4_lut_4_lut.init = 16'hf4b0;
    LUT4 pulse_width_upper_limit_31__I_0_i23_2_lut_rep_446 (.A(pulse_width_upper_limit[11]), 
         .B(count[11]), .Z(n16514)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i23_2_lut_rep_446.init = 16'h6666;
    LUT4 i12208_2_lut_3_lut_4_lut (.A(pulse_width_upper_limit[11]), .B(count[11]), 
         .C(count[10]), .D(pulse_width_upper_limit[10]), .Z(n14716)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12208_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i13305_4_lut (.A(n16498), .B(n16509), .C(n16508), .D(n14747), 
         .Z(n15664)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13305_4_lut.init = 16'hfeff;
    LUT4 i13211_4_lut_4_lut (.A(n16472), .B(n14977), .C(n34), .D(n10), 
         .Z(n36_adj_1678)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13211_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i12239_4_lut (.A(n16507), .B(n16506), .C(n16505), .D(n14731), 
         .Z(n14747)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12239_4_lut.init = 16'h5455;
    LUT4 i12223_4_lut (.A(n16504), .B(n16510), .C(n16515), .D(n11_adj_1695), 
         .Z(n14731)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12223_4_lut.init = 16'h5554;
    LUT4 pulse_width_upper_limit_31__I_0_i18_3_lut_3_lut (.A(pulse_width_upper_limit[11]), 
         .B(count[11]), .C(count[10]), .Z(n18_adj_1653)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i13_2_lut_rep_447 (.A(pulse_width_upper_limit[6]), 
         .B(count[6]), .Z(n16515)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i13_2_lut_rep_447.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i10_3_lut_3_lut (.A(pulse_width_upper_limit[6]), 
         .B(count[6]), .C(count[5]), .Z(n10_adj_1693)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i12170_3_lut_4_lut (.A(pulse_width_upper_limit[3]), .B(count[3]), 
         .C(count[2]), .D(pulse_width_upper_limit[2]), .Z(n14678)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12170_3_lut_4_lut.init = 16'h9009;
    LUT4 pulse_width_upper_limit_31__I_0_i6_3_lut_3_lut (.A(pulse_width_upper_limit[3]), 
         .B(count[3]), .C(count[2]), .Z(n6_adj_1696)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i13213_4_lut_4_lut (.A(n16468), .B(n15019), .C(n44_adj_1697), 
         .D(n8), .Z(n46_adj_1675)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13213_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i13215_4_lut_4_lut (.A(n16551), .B(n15175), .C(n34_adj_1698), 
         .D(n10_adj_1699), .Z(n36_adj_1674)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13215_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i13217_4_lut_4_lut (.A(n16538), .B(n15217), .C(n44_adj_1700), 
         .D(n8_adj_1701), .Z(n46_adj_1670)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13217_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i13336_4_lut (.A(n16441), .B(n16440), .C(n16439), .D(n15440), 
         .Z(n15695)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13336_4_lut.init = 16'hefee;
    LUT4 i12932_4_lut (.A(n16438), .B(n16437), .C(n25_adj_1702), .D(n15317), 
         .Z(n15440)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12932_4_lut.init = 16'h1011;
    LUT4 i13219_4_lut_4_lut (.A(n16442), .B(n15373), .C(n34_adj_1703), 
         .D(n10_adj_1704), .Z(n36)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13219_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i13221_4_lut_4_lut (.A(n16447), .B(n15415), .C(n44_adj_1705), 
         .D(n8_adj_1706), .Z(n46)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13221_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i13366_4_lut (.A(n16534), .B(n16533), .C(n16532), .D(n15242), 
         .Z(n15725)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13366_4_lut.init = 16'hefee;
    LUT4 i12734_4_lut (.A(n16540), .B(n16539), .C(n25), .D(n15119), 
         .Z(n15242)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12734_4_lut.init = 16'h1011;
    LUT4 i13313_4_lut (.A(n16467), .B(n16466), .C(n16465), .D(n15044), 
         .Z(n15672)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13313_4_lut.init = 16'hefee;
    LUT4 i12536_4_lut (.A(n16470), .B(n16469), .C(n25_adj_1707), .D(n14921), 
         .Z(n15044)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12536_4_lut.init = 16'h1011;
    CCU2D add_11_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13116), 
          .COUT(n13117), .S0(count_31__N_1168[1]), .S1(count_31__N_1168[2]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_3.INIT0 = 16'h5aaa;
    defparam add_11_3.INIT1 = 16'h5aaa;
    defparam add_11_3.INJECT1_0 = "NO";
    defparam add_11_3.INJECT1_1 = "NO";
    CCU2D add_11_27 (.A0(count[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13128), .COUT(n13129), .S0(count_31__N_1168[25]), .S1(count_31__N_1168[26]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_27.INIT0 = 16'h5aaa;
    defparam add_11_27.INIT1 = 16'h5aaa;
    defparam add_11_27.INJECT1_0 = "NO";
    defparam add_11_27.INJECT1_1 = "NO";
    LUT4 i13363_4_lut (.A(n16493), .B(n16492), .C(n16491), .D(n14839), 
         .Z(n15722)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13363_4_lut.init = 16'hefee;
    LUT4 i12331_4_lut (.A(n16496), .B(n16495), .C(n25_adj_1708), .D(n14716), 
         .Z(n14839)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12331_4_lut.init = 16'h1011;
    CCU2D add_11_25 (.A0(count[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13127), .COUT(n13128), .S0(count_31__N_1168[23]), .S1(count_31__N_1168[24]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_25.INIT0 = 16'h5aaa;
    defparam add_11_25.INIT1 = 16'h5aaa;
    defparam add_11_25.INJECT1_0 = "NO";
    defparam add_11_25.INJECT1_1 = "NO";
    CCU2D add_11_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13126), .COUT(n13127), .S0(count_31__N_1168[21]), .S1(count_31__N_1168[22]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_23.INIT0 = 16'h5aaa;
    defparam add_11_23.INIT1 = 16'h5aaa;
    defparam add_11_23.INJECT1_0 = "NO";
    defparam add_11_23.INJECT1_1 = "NO";
    CCU2D add_11_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13125), .COUT(n13126), .S0(count_31__N_1168[19]), .S1(count_31__N_1168[20]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_21.INIT0 = 16'h5aaa;
    defparam add_11_21.INIT1 = 16'h5aaa;
    defparam add_11_21.INJECT1_0 = "NO";
    defparam add_11_21.INJECT1_1 = "NO";
    LUT4 i13335_4_lut (.A(n16436), .B(n16441), .C(n16440), .D(n25_adj_1702), 
         .Z(n15473)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13335_4_lut.init = 16'haaab;
    LUT4 i13347_4_lut (.A(n16446), .B(n16445), .C(n16444), .D(n15397), 
         .Z(n15706)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13347_4_lut.init = 16'hefee;
    LUT4 i13349_4_lut (.A(n16450), .B(n16449), .C(n16448), .D(n15355), 
         .Z(n15708)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13349_4_lut.init = 16'hefee;
    LUT4 pulse_width_upper_limit_31__I_0_i4_4_lut (.A(count[0]), .B(count[1]), 
         .C(pulse_width_upper_limit[1]), .D(pulse_width_upper_limit[0]), 
         .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 i13376_4_lut (.A(n16537), .B(n16536), .C(n16535), .D(n15199), 
         .Z(n15735)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13376_4_lut.init = 16'hefee;
    CCU2D add_11_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13117), 
          .COUT(n13118), .S0(count_31__N_1168[3]), .S1(count_31__N_1168[4]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_5.INIT0 = 16'h5aaa;
    defparam add_11_5.INIT1 = 16'h5aaa;
    defparam add_11_5.INJECT1_0 = "NO";
    defparam add_11_5.INJECT1_1 = "NO";
    CCU2D add_11_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13124), .COUT(n13125), .S0(count_31__N_1168[17]), .S1(count_31__N_1168[18]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_19.INIT0 = 16'h5aaa;
    defparam add_11_19.INIT1 = 16'h5aaa;
    defparam add_11_19.INJECT1_0 = "NO";
    defparam add_11_19.INJECT1_1 = "NO";
    LUT4 i13378_4_lut (.A(n16549), .B(n16555), .C(n16554), .D(n15157), 
         .Z(n15737)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13378_4_lut.init = 16'hefee;
    LUT4 i13351_4_lut (.A(n16479), .B(n16478), .C(n16477), .D(n15001), 
         .Z(n15710)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13351_4_lut.init = 16'hefee;
    LUT4 i13372_4_lut (.A(n16471), .B(n16482), .C(n16481), .D(n14959), 
         .Z(n15731)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13372_4_lut.init = 16'hefee;
    LUT4 rate_upper_limit_31__I_0_i4_4_lut (.A(count[0]), .B(count[1]), 
         .C(rate_upper_limit[1]), .D(rate_upper_limit[0]), .Z(n4_adj_1709)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 i13382_4_lut (.A(n16503), .B(n16502), .C(n16501), .D(n14796), 
         .Z(n15741)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13382_4_lut.init = 16'hefee;
    LUT4 i12629_4_lut (.A(n16558), .B(n16557), .C(n16556), .D(n15122), 
         .Z(n15137)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12629_4_lut.init = 16'h0001;
    LUT4 rate_upper_limit_31__I_0_i26_3_lut_3_lut (.A(rate_upper_limit[15]), 
         .B(count[15]), .C(n14_adj_1710), .Z(n26_adj_1711)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i13365_4_lut (.A(n16531), .B(n16534), .C(n16533), .D(n25), 
         .Z(n15275)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13365_4_lut.init = 16'haaab;
    LUT4 i13297_4_lut (.A(n16498), .B(n16509), .C(n16508), .D(n14754), 
         .Z(n15656)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13297_4_lut.init = 16'hefee;
    CCU2D add_11_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13123), .COUT(n13124), .S0(count_31__N_1168[15]), .S1(count_31__N_1168[16]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_17.INIT0 = 16'h5aaa;
    defparam add_11_17.INIT1 = 16'h5aaa;
    defparam add_11_17.INJECT1_0 = "NO";
    defparam add_11_17.INJECT1_1 = "NO";
    LUT4 rate_upper_limit_31__I_0_i63_2_lut_rep_463 (.A(rate_upper_limit[31]), 
         .B(count[31]), .Z(n16531)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i63_2_lut_rep_463.init = 16'h6666;
    CCU2D add_11_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13122), .COUT(n13123), .S0(count_31__N_1168[13]), .S1(count_31__N_1168[14]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_15.INIT0 = 16'h5aaa;
    defparam add_11_15.INIT1 = 16'h5aaa;
    defparam add_11_15.INJECT1_0 = "NO";
    defparam add_11_15.INJECT1_1 = "NO";
    LUT4 i13367_2_lut_3_lut (.A(rate_upper_limit[31]), .B(count[31]), .C(n15725), 
         .Z(n15271)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13367_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i13296_4_lut (.A(n16464), .B(n16467), .C(n16466), .D(n25_adj_1707), 
         .Z(n15077)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13296_4_lut.init = 16'haaab;
    LUT4 rate_upper_limit_31__I_0_i56_3_lut_3_lut (.A(rate_upper_limit[31]), 
         .B(count[31]), .C(n18_adj_1712), .Z(n56_adj_1683)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i56_3_lut_3_lut.init = 16'hd4d4;
    LUT4 rate_upper_limit_31__I_0_i57_2_lut_rep_464 (.A(rate_upper_limit[28]), 
         .B(count[28]), .Z(n16532)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i57_2_lut_rep_464.init = 16'h6666;
    LUT4 i13371_2_lut_3_lut_4_lut (.A(rate_upper_limit[28]), .B(count[28]), 
         .C(n16539), .D(n16540), .Z(n15253)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13371_2_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 rate_upper_limit_31__I_0_i50_3_lut_3_lut (.A(rate_upper_limit[28]), 
         .B(count[28]), .C(n22_adj_1713), .Z(n50_adj_1714)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i50_3_lut_3_lut.init = 16'hd4d4;
    PFUMX count_31__I_0_i52 (.BLUT(n6_adj_1715), .ALUT(n50_adj_1716), .C0(n15451), 
          .Z(n52)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 rate_upper_limit_31__I_0_i59_2_lut_rep_465 (.A(rate_upper_limit[29]), 
         .B(count[29]), .Z(n16533)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i59_2_lut_rep_465.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i20_3_lut_3_lut (.A(rate_upper_limit[29]), 
         .B(count[29]), .C(count[12]), .Z(n20_adj_1717)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 rate_upper_limit_31__I_0_i61_2_lut_rep_466 (.A(rate_upper_limit[30]), 
         .B(count[30]), .Z(n16534)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i61_2_lut_rep_466.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i54_3_lut_3_lut (.A(rate_upper_limit[30]), 
         .B(count[30]), .C(n20_adj_1717), .Z(n54_adj_1682)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i54_3_lut_3_lut.init = 16'hd4d4;
    LUT4 rate_upper_limit_31__I_0_i45_2_lut_rep_467 (.A(rate_upper_limit[22]), 
         .B(count[22]), .Z(n16535)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i45_2_lut_rep_467.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i24_3_lut_3_lut (.A(rate_upper_limit[22]), 
         .B(count[22]), .C(n16_adj_1718), .Z(n24_adj_1669)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 rate_upper_limit_31__I_0_i47_2_lut_rep_468 (.A(rate_upper_limit[23]), 
         .B(count[23]), .Z(n16536)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i47_2_lut_rep_468.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i49_2_lut_rep_469 (.A(rate_upper_limit[24]), 
         .B(count[24]), .Z(n16537)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i49_2_lut_rep_469.init = 16'h6666;
    LUT4 i12709_2_lut_3_lut_4_lut (.A(rate_upper_limit[24]), .B(count[24]), 
         .C(count[23]), .D(rate_upper_limit[23]), .Z(n15217)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12709_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 rate_upper_limit_31__I_0_i42_3_lut_3_lut (.A(rate_upper_limit[24]), 
         .B(count[24]), .C(count[23]), .Z(n42_adj_1719)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut (.A(laser_pulse_d1), .B(n14557), .C(state[1]), .D(rate_upper_limit_fail_N_1309), 
         .Z(n13433)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut.init = 16'h4454;
    LUT4 i1_3_lut (.A(state[0]), .B(pulse_lower_limit_fail_N_1286), .C(pulse_lower_limit_fail_N_1285), 
         .Z(n14557)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_adj_87 (.A(n16405), .B(laser_pulse_d1), .C(state[0]), 
         .D(state[1]), .Z(n5697)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_87.init = 16'heeea;
    CCU2D add_11_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13121), .COUT(n13122), .S0(count_31__N_1168[11]), .S1(count_31__N_1168[12]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_13.INIT0 = 16'h5aaa;
    defparam add_11_13.INIT1 = 16'h5aaa;
    defparam add_11_13.INJECT1_0 = "NO";
    defparam add_11_13.INJECT1_1 = "NO";
    LUT4 rate_upper_limit_31__I_0_i51_2_lut_rep_470 (.A(rate_upper_limit[25]), 
         .B(count[25]), .Z(n16538)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i51_2_lut_rep_470.init = 16'h6666;
    LUT4 i1_4_lut_adj_88 (.A(rate_upper_limit_fail_N_1309), .B(count_31__N_1131), 
         .C(n14577), .D(n16463), .Z(n4_adj_1720)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_88.init = 16'ha0ec;
    LUT4 i1_2_lut (.A(state[1]), .B(laser_pulse_d1), .Z(n14577)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_89 (.A(count[1]), .B(count_31__N_1168[1]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_89.init = 16'heca0;
    LUT4 rate_upper_limit_31__I_0_i44_3_lut_3_lut (.A(rate_upper_limit[25]), 
         .B(count[25]), .C(n42_adj_1719), .Z(n44_adj_1700)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_90 (.A(count[2]), .B(count_31__N_1168[2]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_90.init = 16'heca0;
    LUT4 i13377_2_lut_3_lut (.A(rate_upper_limit[25]), .B(count[25]), .C(n15735), 
         .Z(n15224)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13377_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i1_4_lut_adj_91 (.A(count[3]), .B(count_31__N_1168[3]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_91.init = 16'heca0;
    LUT4 rate_upper_limit_31__I_0_i53_2_lut_rep_471 (.A(rate_upper_limit[26]), 
         .B(count[26]), .Z(n16539)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i53_2_lut_rep_471.init = 16'h6666;
    LUT4 i1_4_lut_adj_92 (.A(count[4]), .B(count_31__N_1168[4]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_92.init = 16'heca0;
    LUT4 i1_4_lut_adj_93 (.A(count[5]), .B(count_31__N_1168[5]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_93.init = 16'heca0;
    LUT4 i1_4_lut_adj_94 (.A(count[6]), .B(count_31__N_1168[6]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_94.init = 16'heca0;
    PFUMX count_31__I_0_i28 (.BLUT(n4_adj_1722), .ALUT(n26_adj_1723), .C0(n15346), 
          .Z(n28)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 i1_4_lut_adj_95 (.A(count[7]), .B(count_31__N_1168[7]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_95.init = 16'heca0;
    LUT4 i1_4_lut_adj_96 (.A(count[8]), .B(count_31__N_1168[8]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[8])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_96.init = 16'heca0;
    LUT4 i1_4_lut_adj_97 (.A(count[9]), .B(count_31__N_1168[9]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_97.init = 16'heca0;
    LUT4 rate_upper_limit_31__I_0_i55_2_lut_rep_472 (.A(rate_upper_limit[27]), 
         .B(count[27]), .Z(n16540)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i55_2_lut_rep_472.init = 16'h6666;
    LUT4 i1_4_lut_adj_98 (.A(count[10]), .B(count_31__N_1168[10]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[10])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_98.init = 16'heca0;
    PFUMX rate_upper_limit_31__I_0_i52 (.BLUT(n6_adj_1724), .ALUT(n50_adj_1714), 
          .C0(n15253), .Z(n52_adj_1654)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 i1_4_lut_adj_99 (.A(count[11]), .B(count_31__N_1168[11]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[11])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_99.init = 16'heca0;
    LUT4 i1_4_lut_adj_100 (.A(count[12]), .B(count_31__N_1168[12]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[12])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_100.init = 16'heca0;
    LUT4 i1_4_lut_adj_101 (.A(count[13]), .B(count_31__N_1168[13]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[13])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_101.init = 16'heca0;
    CCU2D add_11_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13120), .COUT(n13121), .S0(count_31__N_1168[9]), .S1(count_31__N_1168[10]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_11.INIT0 = 16'h5aaa;
    defparam add_11_11.INIT1 = 16'h5aaa;
    defparam add_11_11.INJECT1_0 = "NO";
    defparam add_11_11.INJECT1_1 = "NO";
    LUT4 rate_upper_limit_31__I_0_i22_3_lut_3_lut (.A(rate_upper_limit[27]), 
         .B(count[27]), .C(count[26]), .Z(n22_adj_1713)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i22_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_11_33 (.A0(count[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13131), 
          .S0(count_31__N_1168[31]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_33.INIT0 = 16'h5aaa;
    defparam add_11_33.INIT1 = 16'h0000;
    defparam add_11_33.INJECT1_0 = "NO";
    defparam add_11_33.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_102 (.A(count[14]), .B(count_31__N_1168[14]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[14])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_102.init = 16'heca0;
    CCU2D add_11_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13119), 
          .COUT(n13120), .S0(count_31__N_1168[7]), .S1(count_31__N_1168[8]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_9.INIT0 = 16'h5aaa;
    defparam add_11_9.INIT1 = 16'h5aaa;
    defparam add_11_9.INJECT1_0 = "NO";
    defparam add_11_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_103 (.A(count[15]), .B(count_31__N_1168[15]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[15])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_103.init = 16'heca0;
    LUT4 rate_upper_limit_31__I_0_i21_2_lut_rep_473 (.A(rate_upper_limit[10]), 
         .B(count[10]), .Z(n16541)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i21_2_lut_rep_473.init = 16'h6666;
    LUT4 i1_4_lut_adj_104 (.A(count[16]), .B(count_31__N_1168[16]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[16])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_104.init = 16'heca0;
    LUT4 i1_4_lut_adj_105 (.A(count[17]), .B(count_31__N_1168[17]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[17])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_105.init = 16'heca0;
    CCU2D add_11_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n13116), 
          .S1(count_31__N_1168[0]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(83[47:56])
    defparam add_11_1.INIT0 = 16'hF000;
    defparam add_11_1.INIT1 = 16'h5555;
    defparam add_11_1.INJECT1_0 = "NO";
    defparam add_11_1.INJECT1_1 = "NO";
    LUT4 count_31__I_0_142_i55_2_lut_rep_402 (.A(count[27]), .B(pulse_width_lower_limit[27]), 
         .Z(n16470)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i55_2_lut_rep_402.init = 16'h6666;
    LUT4 i1_4_lut_adj_106 (.A(count[18]), .B(count_31__N_1168[18]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[18])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_106.init = 16'heca0;
    LUT4 i1_4_lut_adj_107 (.A(count[19]), .B(count_31__N_1168[19]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[19])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_107.init = 16'heca0;
    PFUMX rate_upper_limit_31__I_0_i28 (.BLUT(n4_adj_1709), .ALUT(n26_adj_1711), 
          .C0(n15148), .Z(n28_adj_1644)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 i1_4_lut_adj_108 (.A(count[20]), .B(count_31__N_1168[20]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[20])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_108.init = 16'heca0;
    LUT4 rate_upper_limit_31__I_0_i23_2_lut_rep_474 (.A(rate_upper_limit[11]), 
         .B(count[11]), .Z(n16542)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i23_2_lut_rep_474.init = 16'h6666;
    LUT4 i1_4_lut_adj_109 (.A(count[21]), .B(count_31__N_1168[21]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[21])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_109.init = 16'heca0;
    LUT4 i12611_2_lut_3_lut_4_lut (.A(rate_upper_limit[11]), .B(count[11]), 
         .C(count[10]), .D(rate_upper_limit[10]), .Z(n15119)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12611_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i1_4_lut_adj_110 (.A(count[22]), .B(count_31__N_1168[22]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[22])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_110.init = 16'heca0;
    PFUMX count_31__I_0_142_i52 (.BLUT(n6), .ALUT(n50_adj_1725), .C0(n15055), 
          .Z(n52_adj_1657)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 rate_upper_limit_31__I_0_i18_3_lut_3_lut (.A(rate_upper_limit[11]), 
         .B(count[11]), .C(count[10]), .Z(n18_adj_1712)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 rate_upper_limit_31__I_0_i15_2_lut_rep_475 (.A(rate_upper_limit[7]), 
         .B(count[7]), .Z(n16543)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i15_2_lut_rep_475.init = 16'h6666;
    LUT4 i1_4_lut_adj_111 (.A(count[23]), .B(count_31__N_1168[23]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[23])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_111.init = 16'heca0;
    LUT4 i1_4_lut_adj_112 (.A(rate_upper_limit_fail), .B(n4_adj_1726), .C(state[1]), 
         .D(n3735), .Z(rate_upper_limit_fail_N_1306)) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_112.init = 16'hf8a8;
    LUT4 i1_4_lut_adj_113 (.A(count[24]), .B(count_31__N_1168[24]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[24])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_113.init = 16'heca0;
    LUT4 i1_4_lut_adj_114 (.A(count[25]), .B(count_31__N_1168[25]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[25])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_114.init = 16'heca0;
    LUT4 i1_4_lut_adj_115 (.A(count[26]), .B(count_31__N_1168[26]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[26])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_115.init = 16'heca0;
    LUT4 i1_4_lut_adj_116 (.A(count[27]), .B(count_31__N_1168[27]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[27])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_116.init = 16'heca0;
    LUT4 i1_4_lut_adj_117 (.A(count[28]), .B(count_31__N_1168[28]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[28])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_117.init = 16'heca0;
    LUT4 i1_4_lut_adj_118 (.A(count[29]), .B(count_31__N_1168[29]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[29])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_118.init = 16'heca0;
    LUT4 i1_4_lut_adj_119 (.A(count[30]), .B(count_31__N_1168[30]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_119.init = 16'heca0;
    LUT4 count_31__I_0_i63_2_lut_rep_368 (.A(count[31]), .B(rate_lower_limit[31]), 
         .Z(n16436)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i63_2_lut_rep_368.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i17_2_lut_rep_476 (.A(rate_upper_limit[8]), 
         .B(count[8]), .Z(n16544)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i17_2_lut_rep_476.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i8_3_lut_3_lut (.A(rate_upper_limit[8]), 
         .B(count[8]), .C(count[4]), .Z(n8_adj_1701)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_120 (.A(count[31]), .B(count_31__N_1168[31]), .C(n14579), 
         .D(n12_adj_1721), .Z(count_31__N_1099[31])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_120.init = 16'heca0;
    LUT4 count_31__I_0_i56_3_lut_3_lut (.A(count[31]), .B(rate_lower_limit[31]), 
         .C(n18_adj_1727), .Z(n56_adj_1665)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i56_3_lut_3_lut.init = 16'hd4d4;
    LUT4 rate_upper_limit_31__I_0_i19_2_lut_rep_477 (.A(rate_upper_limit[9]), 
         .B(count[9]), .Z(n16545)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i19_2_lut_rep_477.init = 16'h6666;
    LUT4 i13337_2_lut_3_lut (.A(count[31]), .B(rate_lower_limit[31]), .C(n15695), 
         .Z(n15469)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13337_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i13362_4_lut (.A(n16490), .B(n16493), .C(n16492), .D(n25_adj_1708), 
         .Z(n14872)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i13362_4_lut.init = 16'haaab;
    LUT4 count_31__I_0_i53_2_lut_rep_369 (.A(count[26]), .B(rate_lower_limit[26]), 
         .Z(n16437)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i53_2_lut_rep_369.init = 16'h6666;
    LUT4 i13341_2_lut_3_lut_4_lut (.A(count[26]), .B(rate_lower_limit[26]), 
         .C(n16439), .D(n16438), .Z(n15451)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13341_2_lut_3_lut_4_lut.init = 16'hfff6;
    PFUMX count_31__I_0_142_i28 (.BLUT(n4_adj_1728), .ALUT(n26), .C0(n14950), 
          .Z(n28_adj_1647)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 count_31__I_0_i55_2_lut_rep_370 (.A(count[27]), .B(rate_lower_limit[27]), 
         .Z(n16438)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i55_2_lut_rep_370.init = 16'h6666;
    LUT4 count_31__I_0_i22_3_lut_3_lut (.A(count[27]), .B(rate_lower_limit[27]), 
         .C(rate_lower_limit[26]), .Z(n22_adj_1729)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i22_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i57_2_lut_rep_371 (.A(count[28]), .B(rate_lower_limit[28]), 
         .Z(n16439)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i57_2_lut_rep_371.init = 16'h6666;
    LUT4 count_31__I_0_i50_3_lut_3_lut (.A(count[28]), .B(rate_lower_limit[28]), 
         .C(n22_adj_1729), .Z(n50_adj_1716)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i50_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i59_2_lut_rep_372 (.A(count[29]), .B(rate_lower_limit[29]), 
         .Z(n16440)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i59_2_lut_rep_372.init = 16'h6666;
    PFUMX pulse_width_upper_limit_31__I_0_i52 (.BLUT(n6_adj_1696), .ALUT(n50), 
          .C0(n14850), .Z(n52_adj_1660)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 rate_upper_limit_31__I_0_i13_2_lut_rep_479 (.A(rate_upper_limit[6]), 
         .B(count[6]), .Z(n16547)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i13_2_lut_rep_479.init = 16'h6666;
    LUT4 count_31__I_0_i20_3_lut_3_lut (.A(count[29]), .B(rate_lower_limit[29]), 
         .C(rate_lower_limit[12]), .Z(n20_adj_1730)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 rate_upper_limit_31__I_0_i10_3_lut_3_lut (.A(rate_upper_limit[6]), 
         .B(count[6]), .C(count[5]), .Z(n10_adj_1699)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i61_2_lut_rep_373 (.A(count[30]), .B(rate_lower_limit[30]), 
         .Z(n16441)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i61_2_lut_rep_373.init = 16'h6666;
    LUT4 count_31__I_0_i54_3_lut_3_lut (.A(count[30]), .B(rate_lower_limit[30]), 
         .C(n20_adj_1730), .Z(n54_adj_1664)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i54_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i12573_3_lut_4_lut (.A(rate_upper_limit[3]), .B(count[3]), .C(count[2]), 
         .D(rate_upper_limit[2]), .Z(n15081)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12573_3_lut_4_lut.init = 16'h9009;
    LUT4 count_31__I_0_i41_2_lut_rep_374 (.A(count[20]), .B(rate_lower_limit[20]), 
         .Z(n16442)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i41_2_lut_rep_374.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i6_3_lut_3_lut (.A(rate_upper_limit[3]), 
         .B(count[3]), .C(count[2]), .Z(n6_adj_1724)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    PFUMX pulse_width_upper_limit_31__I_0_i28 (.BLUT(n4), .ALUT(n26_adj_1690), 
          .C0(n14745), .Z(n28_adj_1650)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=37, LSE_RLINE=56 */ ;
    LUT4 count_31__I_0_i34_3_lut_3_lut (.A(count[20]), .B(rate_lower_limit[20]), 
         .C(n32_adj_1731), .Z(n34_adj_1703)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i64_4_lut (.A(n40_adj_1649), .B(n62), .C(n16464), 
         .D(n15060), .Z(pulse_lower_limit_fail_N_1285)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i64_4_lut.init = 16'hcacc;
    LUT4 count_31__I_0_142_i62_4_lut (.A(n48_adj_1676), .B(n60_adj_1659), 
         .C(n16464), .D(n15062), .Z(n62)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i62_4_lut.init = 16'hcacc;
    LUT4 i12552_4_lut (.A(n16467), .B(n16466), .C(n16465), .D(n15033), 
         .Z(n15060)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12552_4_lut.init = 16'h0100;
    LUT4 i12554_4_lut (.A(n16467), .B(n16466), .C(n16465), .D(n15035), 
         .Z(n15062)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12554_4_lut.init = 16'h0100;
    LUT4 i12527_4_lut (.A(n16470), .B(n16469), .C(n16468), .D(n15015), 
         .Z(n15035)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12527_4_lut.init = 16'h1011;
    LUT4 i12507_4_lut (.A(n16479), .B(n16478), .C(n16477), .D(n14994), 
         .Z(n15015)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12507_4_lut.init = 16'h0100;
    LUT4 i12486_4_lut (.A(n16473), .B(n25_adj_1707), .C(n16484), .D(n14914), 
         .Z(n14994)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12486_4_lut.init = 16'h5455;
    LUT4 i12406_4_lut (.A(n16483), .B(n16487), .C(n16486), .D(n9_adj_1732), 
         .Z(n14914)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12406_4_lut.init = 16'h5554;
    LUT4 i12525_4_lut (.A(n16470), .B(n16469), .C(n16468), .D(n15004), 
         .Z(n15033)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12525_4_lut.init = 16'h0100;
    LUT4 i12496_4_lut (.A(n16479), .B(n16478), .C(n16477), .D(n14989), 
         .Z(n15004)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12496_4_lut.init = 16'h0100;
    LUT4 i12481_4_lut (.A(n16473), .B(n16472), .C(n16471), .D(n14962), 
         .Z(n14989)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12481_4_lut.init = 16'h5455;
    LUT4 i12454_4_lut (.A(n16482), .B(n16481), .C(n16480), .D(n14939), 
         .Z(n14962)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12454_4_lut.init = 16'h0100;
    LUT4 i12431_4_lut (.A(n16476), .B(n16475), .C(n16474), .D(n14924), 
         .Z(n14939)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12431_4_lut.init = 16'h0001;
    LUT4 i12416_4_lut (.A(n25_adj_1707), .B(n16484), .C(n16483), .D(n14905), 
         .Z(n14924)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12416_4_lut.init = 16'h0100;
    LUT4 i12397_4_lut (.A(n16487), .B(n16486), .C(n16485), .D(n14892), 
         .Z(n14905)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12397_4_lut.init = 16'h1011;
    LUT4 i12384_4_lut (.A(n16488), .B(n11_adj_1692), .C(n9_adj_1732), 
         .D(n14883), .Z(n14892)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i12384_4_lut.init = 16'h1011;
    LUT4 rate_upper_limit_31__I_0_i39_2_lut_rep_481 (.A(rate_upper_limit[19]), 
         .B(count[19]), .Z(n16549)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i39_2_lut_rep_481.init = 16'h6666;
    LUT4 i13354_2_lut_3_lut (.A(count[20]), .B(rate_lower_limit[20]), .C(n15712), 
         .Z(n15378)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13354_2_lut_3_lut.init = 16'hf6f6;
    LUT4 rate_upper_limit_31__I_0_i32_3_lut_3_lut (.A(rate_upper_limit[19]), 
         .B(count[19]), .C(count[18]), .Z(n32_adj_1733)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i13350_2_lut_3_lut (.A(count[20]), .B(rate_lower_limit[20]), .C(n15708), 
         .Z(n15380)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13350_2_lut_3_lut.init = 16'hf6f6;
    LUT4 count_31__I_0_i43_2_lut_rep_375 (.A(count[21]), .B(rate_lower_limit[21]), 
         .Z(n16443)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i43_2_lut_rep_375.init = 16'h6666;
    LUT4 count_31__I_0_i16_3_lut_3_lut (.A(count[21]), .B(rate_lower_limit[21]), 
         .C(rate_lower_limit[9]), .Z(n16_adj_1734)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i12604_4_lut (.A(n16541), .B(n16545), .C(n16544), .D(n9), .Z(n15112)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12604_4_lut.init = 16'h5554;
    LUT4 rate_upper_limit_31__I_0_i41_2_lut_rep_483 (.A(rate_upper_limit[20]), 
         .B(count[20]), .Z(n16551)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i41_2_lut_rep_483.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i34_3_lut_3_lut (.A(rate_upper_limit[20]), 
         .B(count[20]), .C(n32_adj_1733), .Z(n34_adj_1698)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i45_2_lut_rep_376 (.A(count[22]), .B(rate_lower_limit[22]), 
         .Z(n16444)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i45_2_lut_rep_376.init = 16'h6666;
    LUT4 i13381_2_lut_3_lut (.A(rate_upper_limit[20]), .B(count[20]), .C(n15739), 
         .Z(n15180)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13381_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i13379_2_lut_3_lut (.A(rate_upper_limit[20]), .B(count[20]), .C(n15737), 
         .Z(n15182)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13379_2_lut_3_lut.init = 16'hf6f6;
    LUT4 count_31__I_0_i24_3_lut_3_lut (.A(count[22]), .B(rate_lower_limit[22]), 
         .C(n16_adj_1734), .Z(n24_adj_1666)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i47_2_lut_rep_377 (.A(count[23]), .B(rate_lower_limit[23]), 
         .Z(n16445)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i47_2_lut_rep_377.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i43_2_lut_rep_484 (.A(rate_upper_limit[21]), 
         .B(count[21]), .Z(n16552)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i43_2_lut_rep_484.init = 16'h6666;
    LUT4 i12691_2_lut_3_lut_4_lut (.A(rate_upper_limit[21]), .B(count[21]), 
         .C(count[9]), .D(rate_upper_limit[9]), .Z(n15199)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12691_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 count_31__I_0_i49_2_lut_rep_378 (.A(count[24]), .B(rate_lower_limit[24]), 
         .Z(n16446)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i49_2_lut_rep_378.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i64_4_lut (.A(n40_adj_1652), .B(n62_adj_1735), 
         .C(n16490), .D(n14855), .Z(pulse_lower_limit_fail_N_1286)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i64_4_lut.init = 16'hcacc;
    LUT4 pulse_width_upper_limit_31__I_0_i62_4_lut (.A(n48_adj_1681), .B(n60_adj_1662), 
         .C(n16490), .D(n14857), .Z(n62_adj_1735)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i62_4_lut.init = 16'hcacc;
    LUT4 i12347_4_lut (.A(n16493), .B(n16492), .C(n16491), .D(n14828), 
         .Z(n14855)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12347_4_lut.init = 16'h0100;
    LUT4 i12349_4_lut (.A(n16493), .B(n16492), .C(n16491), .D(n14830), 
         .Z(n14857)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12349_4_lut.init = 16'h0100;
    LUT4 i12322_4_lut (.A(n16496), .B(n16495), .C(n16494), .D(n14810), 
         .Z(n14830)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12322_4_lut.init = 16'h1011;
    LUT4 i12302_4_lut (.A(n16503), .B(n16502), .C(n16501), .D(n14789), 
         .Z(n14810)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12302_4_lut.init = 16'h0100;
    LUT4 i12281_4_lut (.A(n16500), .B(n25_adj_1708), .C(n16514), .D(n14709), 
         .Z(n14789)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12281_4_lut.init = 16'h5455;
    LUT4 i12201_4_lut (.A(n16513), .B(n16512), .C(n16511), .D(n9_adj_1736), 
         .Z(n14709)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12201_4_lut.init = 16'h5554;
    LUT4 i12320_4_lut (.A(n16496), .B(n16495), .C(n16494), .D(n14799), 
         .Z(n14828)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12320_4_lut.init = 16'h0100;
    LUT4 i12723_4_lut (.A(n16540), .B(n16539), .C(n16538), .D(n15202), 
         .Z(n15231)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12723_4_lut.init = 16'h0100;
    LUT4 i12291_4_lut (.A(n16503), .B(n16502), .C(n16501), .D(n14784), 
         .Z(n14799)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12291_4_lut.init = 16'h0100;
    LUT4 i12276_4_lut (.A(n16500), .B(n16499), .C(n16498), .D(n14757), 
         .Z(n14784)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12276_4_lut.init = 16'h5455;
    LUT4 i12249_4_lut (.A(n16509), .B(n16508), .C(n16507), .D(n14734), 
         .Z(n14757)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12249_4_lut.init = 16'h0100;
    LUT4 i12226_4_lut (.A(n16506), .B(n16505), .C(n16504), .D(n14719), 
         .Z(n14734)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12226_4_lut.init = 16'h0001;
    LUT4 i12211_4_lut (.A(n25_adj_1708), .B(n16514), .C(n16513), .D(n14700), 
         .Z(n14719)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12211_4_lut.init = 16'h0100;
    LUT4 i12192_4_lut (.A(n16512), .B(n16511), .C(n16510), .D(n14687), 
         .Z(n14700)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12192_4_lut.init = 16'h1011;
    LUT4 i12179_4_lut (.A(n16515), .B(n11_adj_1695), .C(n9_adj_1736), 
         .D(n14678), .Z(n14687)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam i12179_4_lut.init = 16'h1011;
    LUT4 rate_upper_limit_31__I_0_i16_3_lut_3_lut (.A(rate_upper_limit[21]), 
         .B(count[21]), .C(count[9]), .Z(n16_adj_1718)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 rate_upper_limit_31__I_0_i33_2_lut_rep_485 (.A(rate_upper_limit[16]), 
         .B(count[16]), .Z(n16553)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i33_2_lut_rep_485.init = 16'h6666;
    LUT4 i12649_2_lut_3_lut_4_lut (.A(rate_upper_limit[16]), .B(count[16]), 
         .C(count[7]), .D(rate_upper_limit[7]), .Z(n15157)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12649_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 rate_upper_limit_31__I_0_i12_3_lut_3_lut (.A(rate_upper_limit[16]), 
         .B(count[16]), .C(count[7]), .Z(n12_adj_1737)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i11_2_lut (.A(pulse_width_upper_limit[5]), 
         .B(count[5]), .Z(n11_adj_1695)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i11_2_lut.init = 16'h6666;
    LUT4 i12907_2_lut_3_lut_4_lut (.A(count[24]), .B(rate_lower_limit[24]), 
         .C(rate_lower_limit[23]), .D(count[23]), .Z(n15415)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12907_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 rate_upper_limit_31__I_0_i35_2_lut_rep_486 (.A(rate_upper_limit[17]), 
         .B(count[17]), .Z(n16554)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i35_2_lut_rep_486.init = 16'h6666;
    LUT4 count_31__I_0_i42_3_lut_3_lut (.A(count[24]), .B(rate_lower_limit[24]), 
         .C(rate_lower_limit[23]), .Z(n42_adj_1738)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i51_2_lut_rep_379 (.A(count[25]), .B(rate_lower_limit[25]), 
         .Z(n16447)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i51_2_lut_rep_379.init = 16'h6666;
    LUT4 pulse_width_upper_limit_31__I_0_i9_2_lut (.A(pulse_width_upper_limit[4]), 
         .B(count[4]), .Z(n9_adj_1736)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i9_2_lut.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i30_3_lut_3_lut (.A(rate_upper_limit[17]), 
         .B(count[17]), .C(n12_adj_1737), .Z(n30_adj_1673)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 pulse_width_upper_limit_31__I_0_i25_2_lut (.A(pulse_width_upper_limit[12]), 
         .B(count[12]), .Z(n25_adj_1708)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(90[41:72])
    defparam pulse_width_upper_limit_31__I_0_i25_2_lut.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i37_2_lut_rep_487 (.A(rate_upper_limit[18]), 
         .B(count[18]), .Z(n16555)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i37_2_lut_rep_487.init = 16'h6666;
    LUT4 count_31__I_0_i44_3_lut_3_lut (.A(count[25]), .B(rate_lower_limit[25]), 
         .C(n42_adj_1738), .Z(n44_adj_1705)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i12667_2_lut_3_lut_4_lut (.A(rate_upper_limit[18]), .B(count[18]), 
         .C(count[19]), .D(rate_upper_limit[19]), .Z(n15175)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12667_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i13348_2_lut_3_lut (.A(count[25]), .B(rate_lower_limit[25]), .C(n15706), 
         .Z(n15422)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13348_2_lut_3_lut.init = 16'hf6f6;
    LUT4 rate_upper_limit_31__I_0_i27_2_lut_rep_488 (.A(rate_upper_limit[13]), 
         .B(count[13]), .Z(n16556)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i27_2_lut_rep_488.init = 16'h6666;
    LUT4 i13385_2_lut_3_lut_4_lut (.A(rate_upper_limit[13]), .B(count[13]), 
         .C(n16558), .D(n16557), .Z(n15148)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i13385_2_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 rate_upper_limit_31__I_0_i29_2_lut_rep_489 (.A(rate_upper_limit[14]), 
         .B(count[14]), .Z(n16557)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i29_2_lut_rep_489.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i31_2_lut_rep_490 (.A(rate_upper_limit[15]), 
         .B(count[15]), .Z(n16558)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i31_2_lut_rep_490.init = 16'h6666;
    LUT4 count_31__I_0_142_i9_2_lut (.A(count[4]), .B(pulse_width_lower_limit[4]), 
         .Z(n9_adj_1732)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i9_2_lut.init = 16'h6666;
    LUT4 count_31__I_0_i35_2_lut_rep_380 (.A(count[17]), .B(rate_lower_limit[17]), 
         .Z(n16448)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i35_2_lut_rep_380.init = 16'h6666;
    LUT4 count_31__I_0_i30_3_lut_3_lut (.A(count[17]), .B(rate_lower_limit[17]), 
         .C(n12_adj_1739), .Z(n30_adj_1667)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i37_2_lut_rep_381 (.A(count[18]), .B(rate_lower_limit[18]), 
         .Z(n16449)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i37_2_lut_rep_381.init = 16'h6666;
    LUT4 count_31__I_0_142_i25_2_lut (.A(count[12]), .B(pulse_width_lower_limit[12]), 
         .Z(n25_adj_1707)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i25_2_lut.init = 16'h6666;
    LUT4 count_31__I_0_i39_2_lut_rep_382 (.A(count[19]), .B(rate_lower_limit[19]), 
         .Z(n16450)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i39_2_lut_rep_382.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i14_3_lut_3_lut (.A(rate_upper_limit[14]), 
         .B(count[14]), .C(count[13]), .Z(n14_adj_1710)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i11_2_lut (.A(count[5]), .B(pulse_width_lower_limit[5]), 
         .Z(n11_adj_1692)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i11_2_lut.init = 16'h6666;
    LUT4 i12865_2_lut_3_lut_4_lut (.A(count[19]), .B(rate_lower_limit[19]), 
         .C(rate_lower_limit[18]), .D(count[18]), .Z(n15373)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12865_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 count_31__I_0_i32_3_lut_3_lut (.A(count[19]), .B(rate_lower_limit[19]), 
         .C(rate_lower_limit[18]), .Z(n32_adj_1731)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i13_2_lut_rep_383 (.A(count[6]), .B(rate_lower_limit[6]), 
         .Z(n16451)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i13_2_lut_rep_383.init = 16'h6666;
    LUT4 count_31__I_0_i10_3_lut_3_lut (.A(count[6]), .B(rate_lower_limit[6]), 
         .C(rate_lower_limit[5]), .Z(n10_adj_1704)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i15_2_lut_rep_384 (.A(count[7]), .B(rate_lower_limit[7]), 
         .Z(n16452)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i15_2_lut_rep_384.init = 16'h6666;
    LUT4 count_31__I_0_i29_2_lut_rep_385 (.A(count[14]), .B(rate_lower_limit[14]), 
         .Z(n16453)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i29_2_lut_rep_385.init = 16'h6666;
    LUT4 i13361_2_lut_3_lut_4_lut (.A(count[14]), .B(rate_lower_limit[14]), 
         .C(n16454), .D(n16457), .Z(n15346)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i13361_2_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 count_31__I_0_i14_3_lut_3_lut (.A(count[14]), .B(rate_lower_limit[14]), 
         .C(rate_lower_limit[13]), .Z(n14_adj_1740)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i31_2_lut_rep_386 (.A(count[15]), .B(rate_lower_limit[15]), 
         .Z(n16454)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i31_2_lut_rep_386.init = 16'h6666;
    LUT4 count_31__I_0_i26_3_lut_3_lut (.A(count[15]), .B(rate_lower_limit[15]), 
         .C(n14_adj_1740), .Z(n26_adj_1723)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i33_2_lut_rep_387 (.A(count[16]), .B(rate_lower_limit[16]), 
         .Z(n16455)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i33_2_lut_rep_387.init = 16'h6666;
    LUT4 i12847_2_lut_3_lut_4_lut (.A(count[16]), .B(rate_lower_limit[16]), 
         .C(rate_lower_limit[7]), .D(count[7]), .Z(n15355)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12847_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i2_4_lut (.A(n12_adj_1741), .B(n2), .C(state[1]), .D(n8_adj_1742), 
         .Z(count_31__N_1099[0])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i2_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_adj_121 (.A(laser_pulse_d1), .B(count_31__N_1168[0]), 
         .Z(n8_adj_1742)) /* synthesis lut_function=(A+(B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_2_lut_adj_121.init = 16'heeee;
    LUT4 i1_4_lut_adj_122 (.A(state[0]), .B(pulse_lower_limit_fail), .C(n3), 
         .D(n11_adj_1743), .Z(pulse_lower_limit_fail_N_1280)) /* synthesis lut_function=(A (B+(C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_122.init = 16'heca8;
    LUT4 i1_4_lut_adj_123 (.A(state[0]), .B(pulse_upper_limit_fail), .C(n355), 
         .D(n11_adj_1743), .Z(pulse_upper_limit_fail_N_1294)) /* synthesis lut_function=(A (B+(C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_123.init = 16'heca8;
    LUT4 count_31__I_0_i12_3_lut_3_lut (.A(count[16]), .B(rate_lower_limit[16]), 
         .C(rate_lower_limit[7]), .Z(n12_adj_1739)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i23_2_lut_rep_388 (.A(count[11]), .B(rate_lower_limit[11]), 
         .Z(n16456)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i23_2_lut_rep_388.init = 16'h6666;
    LUT4 count_31__I_0_i18_3_lut_3_lut (.A(count[11]), .B(rate_lower_limit[11]), 
         .C(rate_lower_limit[10]), .Z(n18_adj_1727)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i27_2_lut_rep_389 (.A(count[13]), .B(rate_lower_limit[13]), 
         .Z(n16457)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i27_2_lut_rep_389.init = 16'h6666;
    LUT4 count_31__I_0_i17_2_lut_rep_390 (.A(count[8]), .B(rate_lower_limit[8]), 
         .Z(n16458)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i17_2_lut_rep_390.init = 16'h6666;
    LUT4 count_31__I_0_i8_3_lut_3_lut (.A(count[8]), .B(rate_lower_limit[8]), 
         .C(rate_lower_limit[4]), .Z(n8_adj_1706)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_i19_2_lut_rep_391 (.A(count[9]), .B(rate_lower_limit[9]), 
         .Z(n16459)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i19_2_lut_rep_391.init = 16'h6666;
    LUT4 i12889_2_lut_3_lut_4_lut (.A(count[9]), .B(rate_lower_limit[9]), 
         .C(rate_lower_limit[21]), .D(count[21]), .Z(n15397)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12889_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i12614_4_lut (.A(n25), .B(n16542), .C(n16541), .D(n15103), 
         .Z(n15122)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12614_4_lut.init = 16'h0100;
    LUT4 count_31__I_0_i21_2_lut_rep_392 (.A(count[10]), .B(rate_lower_limit[10]), 
         .Z(n16460)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i21_2_lut_rep_392.init = 16'h6666;
    LUT4 i12809_2_lut_3_lut_4_lut (.A(count[10]), .B(rate_lower_limit[10]), 
         .C(rate_lower_limit[11]), .D(count[11]), .Z(n15317)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12809_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 count_31__I_0_i7_2_lut_rep_393 (.A(count[3]), .B(rate_lower_limit[3]), 
         .Z(n16461)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i7_2_lut_rep_393.init = 16'h6666;
    LUT4 i1_4_lut_adj_124 (.A(state[1]), .B(rate_lower_limit_fail), .C(n2_adj_1744), 
         .D(n4_adj_1726), .Z(rate_lower_limit_fail_N_1299)) /* synthesis lut_function=(A (B+(C))+!A (B (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_124.init = 16'heca8;
    LUT4 i1_4_lut_adj_125 (.A(laser_pulse_d1), .B(n40), .C(n62_adj_1745), 
         .D(n15465), .Z(n2_adj_1744)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_4_lut_adj_125.init = 16'h88a0;
    LUT4 count_31__I_0_i62_4_lut (.A(n48), .B(n60), .C(n16436), .D(n15458), 
         .Z(n62_adj_1745)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i62_4_lut.init = 16'hcacc;
    LUT4 i12957_4_lut (.A(n16436), .B(n16441), .C(n16440), .D(n15436), 
         .Z(n15465)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12957_4_lut.init = 16'h0100;
    LUT4 count_31__I_0_142_i22_3_lut_3_lut (.A(count[27]), .B(pulse_width_lower_limit[27]), 
         .C(pulse_width_lower_limit[26]), .Z(n22_adj_1746)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i22_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i12694_4_lut (.A(n16537), .B(n16536), .C(n16535), .D(n15187), 
         .Z(n15202)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12694_4_lut.init = 16'h0100;
    LUT4 i12950_4_lut (.A(n16441), .B(n16440), .C(n16439), .D(n15431), 
         .Z(n15458)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12950_4_lut.init = 16'h0100;
    LUT4 i12923_4_lut (.A(n16438), .B(n16437), .C(n16447), .D(n15411), 
         .Z(n15431)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12923_4_lut.init = 16'h1011;
    LUT4 count_31__I_0_i6_3_lut_3_lut (.A(count[3]), .B(rate_lower_limit[3]), 
         .C(rate_lower_limit[2]), .Z(n6_adj_1715)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i12903_4_lut (.A(n16446), .B(n16445), .C(n16444), .D(n15390), 
         .Z(n15411)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12903_4_lut.init = 16'h0100;
    LUT4 i12882_4_lut (.A(n16443), .B(n25_adj_1702), .C(n16456), .D(n15310), 
         .Z(n15390)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12882_4_lut.init = 16'h5455;
    LUT4 i12802_4_lut (.A(n16460), .B(n16459), .C(n16458), .D(n9_adj_1747), 
         .Z(n15310)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12802_4_lut.init = 16'h5554;
    LUT4 i12928_4_lut (.A(n16439), .B(n16438), .C(n16437), .D(n15409), 
         .Z(n15436)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12928_4_lut.init = 16'h0100;
    LUT4 i12901_4_lut (.A(n16447), .B(n16446), .C(n16445), .D(n15388), 
         .Z(n15409)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12901_4_lut.init = 16'h0100;
    LUT4 i12880_4_lut (.A(n16444), .B(n16443), .C(n16442), .D(n15367), 
         .Z(n15388)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12880_4_lut.init = 16'h1011;
    LUT4 i12859_4_lut (.A(n16450), .B(n16449), .C(n16448), .D(n15342), 
         .Z(n15367)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12859_4_lut.init = 16'h0100;
    LUT4 i12834_4_lut (.A(n16455), .B(n16454), .C(n16453), .D(n15327), 
         .Z(n15342)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12834_4_lut.init = 16'h0100;
    LUT4 i12819_4_lut (.A(n16457), .B(n25_adj_1702), .C(n16456), .D(n15306), 
         .Z(n15327)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12819_4_lut.init = 16'h5455;
    LUT4 i12798_4_lut (.A(n16460), .B(n16459), .C(n16458), .D(n15293), 
         .Z(n15306)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12798_4_lut.init = 16'h0001;
    LUT4 i12785_4_lut (.A(n16452), .B(n16451), .C(n11_adj_1686), .D(n15282), 
         .Z(n15293)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12785_4_lut.init = 16'h0001;
    LUT4 i12774_4_lut (.A(n9_adj_1747), .B(n16461), .C(count[2]), .D(rate_lower_limit[2]), 
         .Z(n15282)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam i12774_4_lut.init = 16'h1001;
    LUT4 count_31__I_0_i9_2_lut (.A(count[4]), .B(rate_lower_limit[4]), 
         .Z(n9_adj_1747)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i9_2_lut.init = 16'h6666;
    LUT4 count_31__I_0_i25_2_lut (.A(count[12]), .B(rate_lower_limit[12]), 
         .Z(n25_adj_1702)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i25_2_lut.init = 16'h6666;
    LUT4 count_31__I_0_i11_2_lut (.A(count[5]), .B(rate_lower_limit[5]), 
         .Z(n11_adj_1686)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(107[41:65])
    defparam count_31__I_0_i11_2_lut.init = 16'h6666;
    LUT4 count_31__I_0_i4_4_lut_4_lut (.A(count[0]), .B(count[1]), .C(rate_lower_limit[1]), 
         .D(rate_lower_limit[0]), .Z(n4_adj_1722)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_31__I_0_i4_4_lut_4_lut.init = 16'h7130;
    LUT4 count_31__I_0_142_i4_4_lut_4_lut (.A(count[0]), .B(count[1]), .C(pulse_width_lower_limit[1]), 
         .D(pulse_width_lower_limit[0]), .Z(n4_adj_1728)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C+(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(70[14] 132[16])
    defparam count_31__I_0_142_i4_4_lut_4_lut.init = 16'h7130;
    LUT4 i1_3_lut_4_lut (.A(state[2]), .B(\dynamic_control[0] ), .C(count_31__N_1131), 
         .D(state[1]), .Z(n11_adj_1743)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_3_lut_4_lut.init = 16'hfff2;
    LUT4 i12679_4_lut (.A(n16552), .B(n16551), .C(n16549), .D(n15160), 
         .Z(n15187)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12679_4_lut.init = 16'h5455;
    LUT4 i1_3_lut_4_lut_adj_126 (.A(state[2]), .B(\dynamic_control[0] ), 
         .C(count_31__N_1131), .D(state[0]), .Z(n4_adj_1726)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_3_lut_4_lut_adj_126.init = 16'hfff2;
    LUT4 i11_2_lut_rep_395 (.A(laser_pulse_d1), .B(laser_pulse_c), .Z(n16463)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(82[37:66])
    defparam i11_2_lut_rep_395.init = 16'h4444;
    LUT4 i97_2_lut_rep_337_3_lut (.A(laser_pulse_d1), .B(laser_pulse_c), 
         .C(count_31__N_1131), .Z(n16405)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(82[37:66])
    defparam i97_2_lut_rep_337_3_lut.init = 16'h4040;
    LUT4 count_31__I_0_142_i63_2_lut_rep_396 (.A(count[31]), .B(pulse_width_lower_limit[31]), 
         .Z(n16464)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i63_2_lut_rep_396.init = 16'h6666;
    LUT4 count_31__I_0_142_i56_3_lut_3_lut (.A(count[31]), .B(pulse_width_lower_limit[31]), 
         .C(n18), .Z(n56_adj_1689)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i56_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i13314_2_lut_3_lut (.A(count[31]), .B(pulse_width_lower_limit[31]), 
         .C(n15672), .Z(n15073)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13314_2_lut_3_lut.init = 16'hf6f6;
    LUT4 count_31__I_0_142_i57_2_lut_rep_397 (.A(count[28]), .B(pulse_width_lower_limit[28]), 
         .Z(n16465)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i57_2_lut_rep_397.init = 16'h6666;
    LUT4 i13339_2_lut_3_lut_4_lut (.A(count[28]), .B(pulse_width_lower_limit[28]), 
         .C(n16469), .D(n16470), .Z(n15055)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13339_2_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 count_31__I_0_142_i50_3_lut_3_lut (.A(count[28]), .B(pulse_width_lower_limit[28]), 
         .C(n22_adj_1746), .Z(n50_adj_1725)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i50_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n16463), .B(count_31__N_1131), .C(count_31__N_1168[0]), 
         .D(state[0]), .Z(n12_adj_1741)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_127 (.A(n16463), .B(count_31__N_1131), 
         .C(n14577), .D(state[0]), .Z(n12_adj_1721)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_2_lut_3_lut_4_lut_adj_127.init = 16'hfff8;
    LUT4 i1296_2_lut_3_lut (.A(TA_shutdown_c), .B(\dynamic_control[0] ), 
         .C(state[2]), .Z(n14579)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1296_2_lut_3_lut.init = 16'h7070;
    LUT4 i2_3_lut_4_lut (.A(TA_shutdown_c), .B(\dynamic_control[0] ), .C(state[2]), 
         .D(count[0]), .Z(n2)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h7000;
    LUT4 i1297_4_lut (.A(n14579), .B(n3), .C(state[0]), .D(n355), .Z(n3782)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1297_4_lut.init = 16'hfaea;
    LUT4 count_31__I_0_142_i59_2_lut_rep_398 (.A(count[29]), .B(pulse_width_lower_limit[29]), 
         .Z(n16466)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i59_2_lut_rep_398.init = 16'h6666;
    LUT4 count_31__I_0_142_i20_3_lut_3_lut (.A(count[29]), .B(pulse_width_lower_limit[29]), 
         .C(pulse_width_lower_limit[12]), .Z(n20_adj_1748)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i61_2_lut_rep_399 (.A(count[30]), .B(pulse_width_lower_limit[30]), 
         .Z(n16467)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i61_2_lut_rep_399.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_adj_128 (.A(TA_shutdown_c), .B(\dynamic_control[0] ), 
         .C(state[2]), .D(n4_adj_1720), .Z(n13286)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i2_3_lut_4_lut_adj_128.init = 16'hff80;
    LUT4 count_31__I_0_142_i54_3_lut_3_lut (.A(count[30]), .B(pulse_width_lower_limit[30]), 
         .C(n20_adj_1748), .Z(n54_adj_1688)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i54_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_31__I_0_142_i51_2_lut_rep_400 (.A(count[25]), .B(pulse_width_lower_limit[25]), 
         .Z(n16468)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i51_2_lut_rep_400.init = 16'h6666;
    LUT4 count_31__I_0_142_i44_3_lut_3_lut (.A(count[25]), .B(pulse_width_lower_limit[25]), 
         .C(n42), .Z(n44_adj_1697)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i13352_2_lut_3_lut (.A(count[25]), .B(pulse_width_lower_limit[25]), 
         .C(n15710), .Z(n15026)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam i13352_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i1250_2_lut (.A(rate_upper_limit_fail_N_1309), .B(laser_pulse_d1), 
         .Z(n3735)) /* synthesis lut_function=(A (B)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(113[42] 116[15])
    defparam i1250_2_lut.init = 16'h8888;
    LUT4 count_31__I_0_142_i53_2_lut_rep_401 (.A(count[26]), .B(pulse_width_lower_limit[26]), 
         .Z(n16469)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i53_2_lut_rep_401.init = 16'h6666;
    LUT4 rate_upper_limit_31__I_0_i64_4_lut (.A(n40_adj_1646), .B(n62_adj_1749), 
         .C(n16531), .D(n15258), .Z(rate_upper_limit_fail_N_1309)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i64_4_lut.init = 16'hcacc;
    LUT4 i12652_4_lut (.A(n16555), .B(n16554), .C(n16553), .D(n15137), 
         .Z(n15160)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12652_4_lut.init = 16'h0100;
    LUT4 rate_upper_limit_31__I_0_i62_4_lut (.A(n48_adj_1671), .B(n60_adj_1656), 
         .C(n16531), .D(n15260), .Z(n62_adj_1749)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam rate_upper_limit_31__I_0_i62_4_lut.init = 16'hcacc;
    LUT4 i12750_4_lut (.A(n16534), .B(n16533), .C(n16532), .D(n15231), 
         .Z(n15258)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12750_4_lut.init = 16'h0100;
    LUT4 i12752_4_lut (.A(n16534), .B(n16533), .C(n16532), .D(n15233), 
         .Z(n15260)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12752_4_lut.init = 16'h0100;
    LUT4 i12725_4_lut (.A(n16540), .B(n16539), .C(n16538), .D(n15213), 
         .Z(n15233)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12725_4_lut.init = 16'h1011;
    LUT4 i1_3_lut_adj_129 (.A(laser_pulse_d1), .B(pulse_lower_limit_fail_N_1285), 
         .C(pulse_lower_limit_fail_N_1286), .Z(n3)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(79[17] 131[24])
    defparam i1_3_lut_adj_129.init = 16'h0404;
    LUT4 i76_2_lut (.A(pulse_lower_limit_fail_N_1286), .B(laser_pulse_d1), 
         .Z(n355)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(93[46] 98[16])
    defparam i76_2_lut.init = 16'h2222;
    LUT4 i12705_4_lut (.A(n16537), .B(n16536), .C(n16535), .D(n15192), 
         .Z(n15213)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12705_4_lut.init = 16'h0100;
    LUT4 count_31__I_0_142_i39_2_lut_rep_403 (.A(count[19]), .B(pulse_width_lower_limit[19]), 
         .Z(n16471)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(94[17:48])
    defparam count_31__I_0_142_i39_2_lut_rep_403.init = 16'h6666;
    LUT4 i12684_4_lut (.A(n16552), .B(n25), .C(n16542), .D(n15112), 
         .Z(n15192)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12684_4_lut.init = 16'h5455;
    LUT4 i12595_4_lut (.A(n16545), .B(n16544), .C(n16543), .D(n15090), 
         .Z(n15103)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/logic_check.v(103[41:65])
    defparam i12595_4_lut.init = 16'h1011;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module heart_beat
//

module heart_beat (GND_net, clk_div2, heartbeat_n_c_7) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_div2;
    output heartbeat_n_c_7;
    
    wire clk_div2 /* synthesis SET_AS_NETWORK=clk_div2, is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/top.v(116[6:14])
    wire [15:0]prescale /* synthesis SET_AS_NETWORK=\heart_beat/prescale[15], is_clock=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(29[12:20])
    
    wire n13144;
    wire [7:0]n65;
    wire [7:0]n37;
    
    wire n13145;
    wire [15:0]n121;
    wire [15:0]n69;
    
    wire n13139, n13138, n13137, n13136, n13135, n13134, n13133, 
        n13132, n13147, n13146;
    
    CCU2D count_919_985_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13144), .COUT(n13145), .S0(n37[1]), .S1(n37[2]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985_add_4_3.INIT0 = 16'hfaaa;
    defparam count_919_985_add_4_3.INIT1 = 16'hfaaa;
    defparam count_919_985_add_4_3.INJECT1_0 = "NO";
    defparam count_919_985_add_4_3.INJECT1_1 = "NO";
    FD1S3AX prescale_920__i0 (.D(n69[0]), .CK(clk_div2), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i0.GSR = "ENABLED";
    CCU2D count_919_985_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n13144), .S1(n37[0]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985_add_4_1.INIT0 = 16'hF000;
    defparam count_919_985_add_4_1.INIT1 = 16'h0555;
    defparam count_919_985_add_4_1.INJECT1_0 = "NO";
    defparam count_919_985_add_4_1.INJECT1_1 = "NO";
    FD1S3AX count_919_985__i0 (.D(n37[0]), .CK(prescale[15]), .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985__i0.GSR = "ENABLED";
    FD1S3AX prescale_920__i1 (.D(n69[1]), .CK(clk_div2), .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i1.GSR = "ENABLED";
    FD1S3AX prescale_920__i2 (.D(n69[2]), .CK(clk_div2), .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i2.GSR = "ENABLED";
    FD1S3AX prescale_920__i3 (.D(n69[3]), .CK(clk_div2), .Q(n121[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i3.GSR = "ENABLED";
    FD1S3AX prescale_920__i4 (.D(n69[4]), .CK(clk_div2), .Q(n121[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i4.GSR = "ENABLED";
    FD1S3AX prescale_920__i5 (.D(n69[5]), .CK(clk_div2), .Q(n121[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i5.GSR = "ENABLED";
    FD1S3AX prescale_920__i6 (.D(n69[6]), .CK(clk_div2), .Q(n121[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i6.GSR = "ENABLED";
    FD1S3AX prescale_920__i7 (.D(n69[7]), .CK(clk_div2), .Q(n121[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i7.GSR = "ENABLED";
    FD1S3AX prescale_920__i8 (.D(n69[8]), .CK(clk_div2), .Q(n121[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i8.GSR = "ENABLED";
    FD1S3AX prescale_920__i9 (.D(n69[9]), .CK(clk_div2), .Q(n121[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i9.GSR = "ENABLED";
    FD1S3AX prescale_920__i10 (.D(n69[10]), .CK(clk_div2), .Q(n121[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i10.GSR = "ENABLED";
    FD1S3AX prescale_920__i11 (.D(n69[11]), .CK(clk_div2), .Q(n121[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i11.GSR = "ENABLED";
    FD1S3AX prescale_920__i12 (.D(n69[12]), .CK(clk_div2), .Q(n121[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i12.GSR = "ENABLED";
    FD1S3AX prescale_920__i13 (.D(n69[13]), .CK(clk_div2), .Q(n121[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i13.GSR = "ENABLED";
    FD1S3AX prescale_920__i14 (.D(n69[14]), .CK(clk_div2), .Q(n121[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i14.GSR = "ENABLED";
    FD1S3AX prescale_920__i15 (.D(n69[15]), .CK(clk_div2), .Q(prescale[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920__i15.GSR = "ENABLED";
    FD1S3AX count_919_985__i1 (.D(n37[1]), .CK(prescale[15]), .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985__i1.GSR = "ENABLED";
    FD1S3AX count_919_985__i2 (.D(n37[2]), .CK(prescale[15]), .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985__i2.GSR = "ENABLED";
    FD1S3AX count_919_985__i3 (.D(n37[3]), .CK(prescale[15]), .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985__i3.GSR = "ENABLED";
    FD1S3AX count_919_985__i4 (.D(n37[4]), .CK(prescale[15]), .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985__i4.GSR = "ENABLED";
    FD1S3AX count_919_985__i5 (.D(n37[5]), .CK(prescale[15]), .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985__i5.GSR = "ENABLED";
    FD1S3AX count_919_985__i6 (.D(n37[6]), .CK(prescale[15]), .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985__i6.GSR = "ENABLED";
    FD1S3AX count_919_985__i7 (.D(n37[7]), .CK(prescale[15]), .Q(heartbeat_n_c_7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985__i7.GSR = "ENABLED";
    CCU2D prescale_920_add_4_17 (.A0(prescale[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13139), .S0(n69[15]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920_add_4_17.INIT0 = 16'hfaaa;
    defparam prescale_920_add_4_17.INIT1 = 16'h0000;
    defparam prescale_920_add_4_17.INJECT1_0 = "NO";
    defparam prescale_920_add_4_17.INJECT1_1 = "NO";
    CCU2D prescale_920_add_4_15 (.A0(n121[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13138), .COUT(n13139), .S0(n69[13]), .S1(n69[14]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920_add_4_15.INIT0 = 16'hfaaa;
    defparam prescale_920_add_4_15.INIT1 = 16'hfaaa;
    defparam prescale_920_add_4_15.INJECT1_0 = "NO";
    defparam prescale_920_add_4_15.INJECT1_1 = "NO";
    CCU2D prescale_920_add_4_13 (.A0(n121[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13137), .COUT(n13138), .S0(n69[11]), .S1(n69[12]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920_add_4_13.INIT0 = 16'hfaaa;
    defparam prescale_920_add_4_13.INIT1 = 16'hfaaa;
    defparam prescale_920_add_4_13.INJECT1_0 = "NO";
    defparam prescale_920_add_4_13.INJECT1_1 = "NO";
    CCU2D prescale_920_add_4_11 (.A0(n121[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13136), .COUT(n13137), .S0(n69[9]), .S1(n69[10]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920_add_4_11.INIT0 = 16'hfaaa;
    defparam prescale_920_add_4_11.INIT1 = 16'hfaaa;
    defparam prescale_920_add_4_11.INJECT1_0 = "NO";
    defparam prescale_920_add_4_11.INJECT1_1 = "NO";
    CCU2D prescale_920_add_4_9 (.A0(n121[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13135), .COUT(n13136), .S0(n69[7]), .S1(n69[8]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920_add_4_9.INIT0 = 16'hfaaa;
    defparam prescale_920_add_4_9.INIT1 = 16'hfaaa;
    defparam prescale_920_add_4_9.INJECT1_0 = "NO";
    defparam prescale_920_add_4_9.INJECT1_1 = "NO";
    CCU2D prescale_920_add_4_7 (.A0(n121[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13134), .COUT(n13135), .S0(n69[5]), .S1(n69[6]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920_add_4_7.INIT0 = 16'hfaaa;
    defparam prescale_920_add_4_7.INIT1 = 16'hfaaa;
    defparam prescale_920_add_4_7.INJECT1_0 = "NO";
    defparam prescale_920_add_4_7.INJECT1_1 = "NO";
    CCU2D prescale_920_add_4_5 (.A0(n121[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13133), .COUT(n13134), .S0(n69[3]), .S1(n69[4]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920_add_4_5.INIT0 = 16'hfaaa;
    defparam prescale_920_add_4_5.INIT1 = 16'hfaaa;
    defparam prescale_920_add_4_5.INJECT1_0 = "NO";
    defparam prescale_920_add_4_5.INJECT1_1 = "NO";
    CCU2D prescale_920_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13132), .COUT(n13133), .S0(n69[1]), .S1(n69[2]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920_add_4_3.INIT0 = 16'hfaaa;
    defparam prescale_920_add_4_3.INIT1 = 16'hfaaa;
    defparam prescale_920_add_4_3.INJECT1_0 = "NO";
    defparam prescale_920_add_4_3.INJECT1_1 = "NO";
    CCU2D prescale_920_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n13132), .S1(n69[0]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(40[30:42])
    defparam prescale_920_add_4_1.INIT0 = 16'hF000;
    defparam prescale_920_add_4_1.INIT1 = 16'h0555;
    defparam prescale_920_add_4_1.INJECT1_0 = "NO";
    defparam prescale_920_add_4_1.INJECT1_1 = "NO";
    CCU2D count_919_985_add_4_9 (.A0(heartbeat_n_c_7), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13147), .S0(n37[7]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985_add_4_9.INIT0 = 16'hfaaa;
    defparam count_919_985_add_4_9.INIT1 = 16'h0000;
    defparam count_919_985_add_4_9.INJECT1_0 = "NO";
    defparam count_919_985_add_4_9.INJECT1_1 = "NO";
    CCU2D count_919_985_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13146), .COUT(n13147), .S0(n37[5]), .S1(n37[6]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985_add_4_7.INIT0 = 16'hfaaa;
    defparam count_919_985_add_4_7.INIT1 = 16'hfaaa;
    defparam count_919_985_add_4_7.INJECT1_0 = "NO";
    defparam count_919_985_add_4_7.INJECT1_1 = "NO";
    CCU2D count_919_985_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13145), .COUT(n13146), .S0(n37[3]), .S1(n37[4]));   // c:/project/working/fpga/home/lattice/4162025/safety/rev_1/src/heart_beat.v(49[27:36])
    defparam count_919_985_add_4_5.INIT0 = 16'hfaaa;
    defparam count_919_985_add_4_5.INIT1 = 16'hfaaa;
    defparam count_919_985_add_4_5.INJECT1_0 = "NO";
    defparam count_919_985_add_4_5.INJECT1_1 = "NO";
    
endmodule
