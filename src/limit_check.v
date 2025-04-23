
module limit_check( 
    input        rstn,
    input        clk,

    input        clear_fail,
    input        laser_pulse,
    input        pulse_cw_select,

    input        adc_bypass,
    input        adc_data_valid,
    input [15:0] adc_data,

    input [31:0] pulse_width_lower_limit,
    input [31:0] pulse_width_upper_limit,
    input [31:0] rate_lower_limit,
    input [31:0] rate_upper_limit,
    input [15:0] adc_pulse_current_limit,
    input [15:0] adc_cw_current_limit,

    output       pulse_lower_limit_fail,
    output       pulse_upper_limit_fail,
    output       rate_lower_limit_fail,
    output       rate_upper_limit_fail,

    output       current_limit_fail,
    output       adc_pulse_width_lower_limit_fail,
    output       adc_pulse_width_upper_limit_fail,
    output       adc_rate_lower_limit_fail,
    output       adc_rate_upper_limit_fail,

    output       width_limit_window,
    output       rate_limit_window

);

logic_check logic_check( 
    .rstn                     (rstn),
    .clk                      (clk),
    .clear_fail               (clear_fail),

    .laser_pulse              (laser_pulse),
    .pulse_width_lower_limit  (pulse_width_lower_limit),
    .pulse_width_upper_limit  (pulse_width_upper_limit),
    .rate_lower_limit         (rate_lower_limit),
    .rate_upper_limit         (rate_upper_limit),

    .pulse_lower_limit_fail   (pulse_lower_limit_fail),
    .pulse_upper_limit_fail   (pulse_upper_limit_fail),
    .rate_lower_limit_fail    (rate_lower_limit_fail),
    .rate_upper_limit_fail    (rate_upper_limit_fail),

    .width_limit_window       (width_limit_window),
    .rate_limit_window        (rate_limit_window)

);

adc_check adc_check( 
    .rstn                               (rstn),
    .clk                                (clk),
    .clear_fail                         (clear_fail),

    .adc_bypass                         (adc_bypass),
    .pulse_cw_select                    (pulse_cw_select),
    .adc_data_valid                     (adc_data_valid),
    .adc_data                           (adc_data),
    .adc_pulse_current_limit            (adc_pulse_current_limit),
    .adc_cw_current_limit               (adc_cw_current_limit),

    .pulse_width_lower_limit            (pulse_width_lower_limit),
    .pulse_width_upper_limit            (pulse_width_upper_limit),
    .rate_lower_limit                   (rate_lower_limit),
    .rate_upper_limit                   (rate_upper_limit),

    .current_limit_fail                 (current_limit_fail),
    .adc_pulse_width_lower_limit_fail   (adc_pulse_width_lower_limit_fail),
    .adc_pulse_width_upper_limit_fail   (adc_pulse_width_upper_limit_fail),
    .adc_rate_lower_limit_fail          (adc_rate_lower_limit_fail),
    .adc_rate_upper_limit_fail          (adc_rate_upper_limit_fail)

);


endmodule
