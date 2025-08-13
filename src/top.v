`timescale 1ns / 1ps



//Seed DDS: 0 mA (Limit 80mA)
//Seed CW: 140 mA (Limit 140mA)

//Pulse width limit, upper: 0µs
//Pulse width limit, upper: 225µs
//Period limit: 22500µs

//CW Current: 160mA
//PWM Current: 80mA


module top( 
    input     rstn,                    // Pin 21
    input     system_reset_n,          // Pin 13

    input     clk_50mhz,               // Pin 1
	input     laser_pulse,             // Pin 7
	input     pwr_good,                // Pin 14
	input     select,                  // Pin 78    0=EE, 1=OPT
	
	output    laser_pwr_en1_n,      	// Pin 18
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
   // inout     temp_scl,               // Pin 78
  //  inout     temp_sda,               // Pin 75
	
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
wire        buf_laser_active;
wire        adc_data_valid;
wire [15:0] adc_data_value;
wire [7:0]  status;

wire [31:0] pulse_width_lower_limit;
wire [31:0] pulse_width_upper_limit;
wire [31:0] rate_lower_limit;
wire [31:0] adc_pulse_current_limit;
wire [31:0] adc_cw_current_limit;
wire pulse_lower_limit_fail,adc_pulse_width_lower_limit_fail;
wire pulse_upper_limit_fail,adc_pulse_width_upper_limit_fail;
wire rate_lower_limit_fail,adc_rate_lower_limit_fail;
wire width_limit_window;
wire current_limit_fail;

wire [15:0] temperature_sensor;
wire [15:0] drive_current;
wire [15:0] drive_current_limit;
wire [15:0] pwm_current_limit;
wire [15:0] cw_current_limit;
wire [15:0] static_control;
wire [15:0] dynamic_control;
wire        over_current_limit;
wire        laser_ready;
wire        enable_error_check;
wire        clear_peak_power;

wire [15:0] pwm_mon_current_limit;
wire [15:0] cw_mon_current_limit;

wire        edge_detect_1st;
wire        edge_detect_2nd;
wire        pulse_check;
wire        period_check;
wire        offset_count;
wire        pulse_limit_check;
wire        ID;

assign ID = select ? 3 : 4;

///////////////// reg 18 //////////////////////
assign pulse_cw_select      = static_control[0];
assign adc_bypass           = static_control[1];
assign laser_pwr_en1_n      = !static_control[2];
assign enable_error_check   = static_control[3];

assign calibrated_led_n     = !pulse_lower_limit_fail;
assign peak_error_led_n     = !current_limit_fail;
assign pulse_error_led_n    = !pulse_upper_limit_fail;
assign rate_error_led_n     = !rate_lower_limit_fail;
assign watchdog_timeout_led_n = !static_control[7];
assign test_pass_led_n      = !static_control[8];
assign test_fail_led_n      = !static_control[9];

assign clear_fail           = dynamic_control[0];
assign clear_peak_power     = dynamic_control[1];

assign TA_shutdown = (pulse_lower_limit_fail | pulse_upper_limit_fail | rate_lower_limit_fail);

assign pulse_rate_status = {4'h0,pulse_lower_limit_fail,pulse_upper_limit_fail,rate_lower_limit_fail,0};
assign current_status = {7'h0,current_limit_fail};
assign adc_status = {3'h0,laser_pulse,adc_pulse_width_upper_limit_fail,adc_pulse_width_lower_limit_fail,0,adc_rate_lower_limit_fail};

assign spare1              = laser_pulse;
//assign spare1              = current_limit_fail;
//assign spare4              = adc_sck;
//assign spare2              = clear_fail;
//assign spare2              = pulse_limit_check;
assign spare3              = pulse_lower_limit_fail;
//assign spare2              = adc_convert;
//assign spare3              = adc_sdo;
//assign spare4              = pulse_upper_limit_fail;
assign spare4              = edge_detect_2nd;
assign spare2              = edge_detect_1st;
//assign spare4              = adc_sck;
//assign spare2              = pulse_check;
//assign spare4              = period_check;
//assign spare4              = adc_data_valid;
//assign spare4              = rate_lower_limit_fail;
//assign spare4              = offset_count;
//assign spare4              = laser_ready;

assign gpio1               = 0;
assign gpio2               = 0;
assign gpio3               = 0;
assign gpio4               = 0;



//assign status = {5'h0,rate_lower_limit_fail&enable_error_check,((pulse_upper_limit_fail | pulse_lower_limit_fail)&(enable_error_check)),1'h0};
assign status = {5'h0,rate_lower_limit_fail,(pulse_upper_limit_fail | pulse_lower_limit_fail),current_limit_fail};

assign prom_scl              = 0;
assign prom_sda              = 0;
assign buf_clk              = clk_50mhz;

wire clk_div2,clk_div4;

assign buf_rstn = rstn  & system_reset_n;

reset_generator reset_generator( 
    .rstn      (rstn),
    .clk       (clk_div4),
    .reset_n   (reset_n)
);

reset_laser reset_laser( 
    .rstn          (rstn),
    .clk           (clk_div4),
    .laser_ready   (laser_ready)
);

clock_generator clock_generator( 
    .rstn      		(rstn),
    .clk       		(buf_clk),
    .clk_div2       (clk_div2),
    .clk_div4       (clk_div4)
);

heart_beat heart_beat( 
    .rstn      (reset_n),
    .clk       (clk_div2),
    .heartbeat (heartbeat_n)
);

i2c_slave_top i2c_slave_top (
	.rstn 					(reset_n),
	.clk 					(clk_div2),
	
	.scl 					(scl),
	.sda 					(sda),
	
    .temperature_sensor     (16'h1122),
    .revision               (8'h4),
    .minor                  (8'h0),
    .major                  (8'h0),
    .ID                     (ID),

    .adc_data 		        (adc_data_value),
    .monitor_status 		(monitor_status),
    .status 				(status),
	
    .pulse_width_lower_limit (pulse_width_lower_limit),
    .pulse_width_upper_limit (pulse_width_upper_limit),
    .rate_lower_limit     	 (rate_lower_limit),
    .drive_current_limit   (drive_current_limit),
    .pwm_current_limit     (pwm_current_limit),
    .cw_current_limit      (cw_current_limit),
    .pwm_mon_current_limit (pwm_mon_current_limit),
    .cw_mon_current_limit  (cw_mon_current_limit),
    .dynamic_control 	   (dynamic_control),
    .static_control 	   (static_control)

);
    
limit_check limit_check( 
    .rstn                               (reset_n),
    .clk                                (clk_div2),
    .clear_fail                         (clear_fail),

    .laser_pulse                        (laser_pulse),
    .laser_ready                        (laser_ready),

    .adc_data_valid                     (adc_data_valid),
    .adc_data                           (adc_data_value),

    .pulse_width_lower_limit            (pulse_width_lower_limit),
    .pulse_width_upper_limit            (pulse_width_upper_limit),
    .rate_lower_limit                   (rate_lower_limit),

    .drive_current_limit                (drive_current_limit),

    .pulse_lower_limit_fail             (pulse_lower_limit_fail),
    .pulse_upper_limit_fail             (pulse_upper_limit_fail),
    .rate_lower_limit_fail              (rate_lower_limit_fail),

    .current_limit_fail                 (current_limit_fail),
    .width_limit_window                 (width_limit_window),

    .edge_detect_1st                    (edge_detect_1st),
    .edge_detect_2nd                    (edge_detect_2nd),
    .pulse_check                        (pulse_check),
    .period_check                       (period_check),
    .pulse_limit_check                  (pulse_limit_check)


);


adc_control adc_control( 
    .rstn                   (reset_n),
    .clk                    (clk_div2),

    .laser_pulse            (laser_pulse),
    .clear_peak_power       (clear_peak_power),
    .adc_sdo                (adc_sdo),

    .adc_sck                (adc_sck),
    .adc_convert            (adc_convert),
    .adc_data_valid         (adc_data_valid),
    .adc_data_value         (adc_data_value)

);

endmodule


