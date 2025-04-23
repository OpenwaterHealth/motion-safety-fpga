///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: top.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3> <Die::A3PN010> <Package::48 QFN>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1ns / 1ps

module top( 
    input     rstn,                 // Pin 
    input     system_reset_n,       // Pin 13

    input     clk_50mhz,            // Pin 1
	input     laser_pulse,          // Pin 7
	input     pwr_good,             // Pin 14
	
	output    laser_pwr_en1_n,      	// Pin 18
	input     safety_reset_n,       	// Pin 21
	output    watchdog_timeout_led_n,  // Pin 25
	output    calibrated_led_n,        // Pin 31
	output    peak_error_led_n,        // Pin 32
	output    pulse_error_led_n,       // Pin 34
	output    rate_error_led_n,        // Pin 35
	
	output    test_pass_led_n,        // Pin 36
	output    test_fail_led_n,        // Pin 37
	output    TA_shutdown,            // Pin 58
	
	input     adc_sdo,        	       // Pin 98
	output    adc_sck,         	   // Pin 99
	output    adc_convert,     	   // Pin 97
	
    inout     scl,             	   // Pin 88
    inout     sda,             	   // Pin 87
    inout     temp_scl,               // Pin 78
    inout     temp_sda,               // Pin 75
	
    inout     prom_scl,               // Pin 52
    inout     prom_sda,               // Pin 52

    output    heartbeat_n,            // Pin 49
		
	inout     spare1,          	  // Pin 69
	inout     spare2,          	  // Pin 71
	inout     spare3,          	  // Pin 74
	inout     spare4,          	  // Pin 70
	
	
	inout     gpio1,           	  // Pin 30
	inout     gpio2,           	  // Pin 27
	inout     gpio3,           	  // Pin 28
	inout     gpio4           	      // Pin 30
	

	

);

wire        buf_rstn;
wire        buf_clk;
wire        buf_sclk;
wire        buf_miso;
wire        buf_laser_active;
wire        adc_data_valid;
wire [15:0] adc_voltage_data;
wire [15:0] adc_current_data;
wire [7:0]  status;

wire [23:0] pulse_width;
wire [23:0] period;
wire [15:0] drive_current;
wire [15:0] drive_current_limit;
wire [15:0] pwm_current_limit;
wire [15:0] cw_current_limit;
wire [15:0] adc_current_limit;
wire [15:0] static_control;
wire [15:0] dynamic_control;
wire        over_current_limit;

wire drive_current_update;
wire [15:0] pwm_mon_current_limit;
wire [15:0] cw_mon_current_limit;

wire pwm_cw_control_select;
wire pwm_cw_mode_select;
wire auto_run;
wire mon_limit_update;
wire sw_trigger;
wire test_mode;
wire pulse_active;
wire period_active;
wire trigger_ext;
///////////////// reg 20 //////////////////////
assign pwm_cw_mode_select   = static_control[0];
assign cw_active_n          = !static_control[1];
assign modulate_active_n    = !static_control[2];
assign laser_disable        = static_control[3];
assign test_mode            = static_control[7];
 
///////////////// reg 22 //////////////////////
assign drive_current_update = dynamic_control[0];
assign mon_limit_update     = dynamic_control[1];

assign over_current_shutdown_n  = !(over_current_limit);
assign TA_laser_disable = !(over_current_limit);

//assign TA_spare2              = pulse_active;
//assign TA_spare1              = period_active;
assign TA_spare1              = sck;
assign TA_spare2              = mosi;
assign TA_spare3              = ss;
assign TA_spare4              = ldac_n;
assign TA_gpio1               = 0;
assign TA_gpio2               = 0;
assign TA_gpio3               = 0;
assign TA_gpio4               = 0;
assign OPT_gpio1              = 0;
assign OPT_gpio2              = 0;
assign OPT_gpio3              = 0;
assign OPT_gpio4              = 0;

assign status = {system_reset_n,TA_pos_pwr_good,TA_neg_pwr_good,TA_EE_shutdown,TA_OPT_shutdown,cw_compared,pwm_compared,over_current_limit};
assign temp_scl              = 0;
assign temp_sda              = 0;
assign mcu_gpio              = 0;

assign buf_clk = clk_25mhz;
//assign buf_rstn = rstn  & system_reset_n;

reset_generator reset_generator( 
    .rstn      		(rstn),
    .system_reset_n (system_reset_n),
    .clk       		(buf_clk),
    .reset_n   		(reset_n)
);

heart_beat heart_beat( 
    .rstn      (reset_n),
    .clk       (buf_clk),
    .heartbeat (heartbeat_n)
);

i2c_slave_top i2c_slave_top (
	.rstn 					(reset_n),
	.clk 					(buf_clk),
	
	.scl 					(scl),
	.sda 					(sda),
	
    .adc_voltage_data 		(adc_voltage_data),
    .monitor_status 		(monitor_status),
    .status 				(status),
	
    .pulse_width 			(pulse_width),
    .period     			(period),
    .drive_current         (drive_current),
    .drive_current_limit   (drive_current_limit),
    .pwm_mon_current_limit (pwm_mon_current_limit),
    .cw_mon_current_limit  (cw_mon_current_limit),
    .dynamic_control 	   (dynamic_control),
    .static_control 	   (static_control)

);
             
driver_control driver_control(
    .rstn               			(reset_n),
    .clk                			(buf_clk),

    .test_mode 			            (test_mode),
    .pwm_cw_mode_select 			(pwm_cw_mode_select),

    .trigger            			(trigger),
    .pulse_width        			(pulse_width),
    .period             			(period),
	
    .drive_current			        (drive_current),
    .drive_current_limit			(drive_current_limit),
    .drive_current_update 	        (drive_current_update),

    .mosi               			(mosi),
    .ss                 			(ss),
    .sck                			(sck),
    .ldac_n             			(ldac_n),
	
    .pulse_active       			(pulse_active),
    .period_active      			(period_active),
    .trigger_ext      			    (trigger_ext)

	);
	
adc_control adc_control( 
    .rstn                   (reset_n),
    .clk                    (buf_clk),

    .pwm_cw_mode_select     (pwm_cw_mode_select),
	
    .pwm_mon_current_limit  (pwm_mon_current_limit),
    .cw_mon_current_limit   (cw_mon_current_limit),
    .mon_limit_update       (mon_limit_update),
    .adc_status_clear       (adc_status_clear),

    .adc_data_valid         (adc_data_valid),
    .adc_voltage_data       (adc_voltage_data),
	
    .adc_sdo                (adc_sdo),
    .adc_sck                (adc_sck),
    .adc_convert            (adc_convert),

    .monitor_status         (monitor_status)

);

endmodule

