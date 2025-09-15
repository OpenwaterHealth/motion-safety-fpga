
module power_peak_check( 
    input         rstn,
    input         clk,
    input         clear_peak_power_fail,

    input          adc_data_valid,
    input [15:0]  adc_data_value,

    input [15:0]  power_peak_current_limit,

    output reg    power_peak_current_limit_fail

);

parameter   IDLE  = 0,
            CHECK = 1, 
            DONE  = 2;

reg [3:0] state;
reg [15:0] adc_data_d1;
reg adc_data_valid_d1;


always @(posedge clk,negedge rstn)
begin
    if (!rstn) begin
        adc_data_valid_d1 <= 0;     
        adc_data_d1 <= 0;     
        power_peak_current_limit_fail <= 0;     
	    state <= IDLE;
    end else begin
                adc_data_valid_d1 <= adc_data_valid;
                adc_data_d1 <= adc_data_valid;
				case (state)
						IDLE : begin
									if (!adc_data_valid_d1 & adc_data_valid) begin
										if (adc_data_d1 > power_peak_current_limit) begin
											state <= DONE;
											power_peak_current_limit_fail <= 1;
										end else power_peak_current_limit_fail <= 0;
									end
							   end
						DONE : begin
									if (clear_peak_power_fail) begin
										state <= IDLE;
										power_peak_current_limit_fail <= 0;
									end
							   end
				endcase
            end
end



endmodule

