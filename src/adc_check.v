
module adc_check( 
    input        rstn,
    input        clk,
    input        clear_fail,

    input        pulse_cw_select,
    input        adc_bypass,
    input        adc_data_valid,
    input [15:0] adc_data,
    input [15:0] adc_pulse_current_limit,
    input [15:0] adc_cw_current_limit,

    input [31:0] pulse_width_lower_limit,
    input [31:0] pulse_width_upper_limit,
    input [31:0] rate_lower_limit,
    input [31:0] rate_upper_limit,

    output       current_limit_fail,
    output       adc_pulse_width_lower_limit_fail,
    output       adc_pulse_width_upper_limit_fail,
    output       adc_rate_lower_limit_fail,
    output       adc_rate_upper_limit_fail

);

adc_current_check adc_current_check( 
    .rstn                    (rstn),
    .clk                     (clk),
    .clear_fail              (clear_fail),
    .bypass                  (bypass),

    .pulse_cw_select         (pulse_cw_select),
    .adc_pulse_current_limit (adc_pulse_current_limit),
    .adc_cw_current_limit    (adc_cw_current_limit),
    .adc_data_valid          (adc_data_valid),
    .adc_data                (adc_data),

    .current_limit_fail      (current_limit_fail)

);

adc_pulse_rate_check adc_pulse_rate_check( 
    .rstn                               (rstn),
    .clk                                (clk),
    .clear_fail                         (clear_fail),

    .adc_bypass                         (adc_bypass),
    .adc_data_valid                     (adc_data_valid),
    .adc_data                           (adc_data),

    .pulse_width_lower_limit            (pulse_width_lower_limit),
    .pulse_width_upper_limit            (pulse_width_upper_limit),
    .rate_lower_limit                   (rate_lower_limit),
    .rate_upper_limit                   (rate_upper_limit),

    .adc_pulse_width_lower_limit_fail   (adc_pulse_width_lower_limit_fail),
    .adc_pulse_width_upper_limit_fail   (adc_pulse_width_upper_limit_fail),
    .adc_rate_lower_limit_fail          (adc_rate_lower_limit_fail),
    .adc_rate_upper_limit_fail          (adc_rate_upper_limit_fail)

);

endmodule
