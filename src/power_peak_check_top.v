
module power_peak_check_top( 
    input            rstn,
    input            clk,
    input            laser_pulse,
    input            clear_power_fail,
    input            clear_peak_power,

    input            adc_sdo,

    output           adc_sck,
    output           adc_convert,

    input [15:0]    cw_current_limit,
    input [15:0]    drive_current_limit,
    output           adc_data_valid,
    output [15:0]   adc_data_value,
	output [15:0]   adc_data_old_value,
    output [15:0]   peak_power_value,
    output [15:0]   cw_power_value,

    output           cw_current_limit_fail,
    output           power_peak_current_limit_fail,
    output           start_timer,
	output           laser_pulse_delay

);


adc_control adc_control( 
    .rstn      			(rstn),
    .clk       			(clk),
    .laser_pulse 		(laser_pulse),
    .clear_peak_power 	(clear_peak_power),
    .adc_sdo 			(adc_sdo),
    .adc_sck 			(adc_sck),
    .adc_convert 		(adc_convert),
    .adc_data_valid 	(adc_data_valid),
    .adc_data_value 	(adc_data_value),
    .adc_data_old_value (adc_data_old_value),
    .peak_power_value   (peak_power_value), 
    .cw_power_value     (cw_power_value),
    .start_timer        (start_timer),
    .laser_pulse_delay  (laser_pulse_delay)

);

power_peak_check power_peak_check( 
    .rstn      						(rstn),
    .clk       						(clk),
    .laser_pulse 		            (laser_pulse),
    .clear_power_fail 	            (clear_power_fail),
    .adc_data_valid 				(adc_data_valid),
    .adc_data_value 				(adc_data_value),
    .adc_data_old_value 			(adc_data_old_value),
    .peak_power_value              (peak_power_value), 
    .cw_power_value                (cw_power_value), 

    .cw_current_limit 		        (cw_current_limit),
    .cw_current_limit_fail     	    (cw_current_limit_fail),
    .drive_current_limit 		    (drive_current_limit),
    .power_peak_current_limit_fail 	(power_peak_current_limit_fail)
);



endmodule

