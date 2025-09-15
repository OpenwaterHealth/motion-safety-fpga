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

//`timescale <time_units> / <precision>

module adc_control( 
    input              rstn,
    input              clk,

    input              laser_pulse,
    input              clear_peak_power,
    input              adc_sdo,

    output             adc_sck,
    output reg         adc_convert,
	output reg         adc_data_valid,
    output reg [15:0] adc_data_value

)/* synthesis syn_preserve=1 */;

parameter   IDLE        = 4'd0,
            CONVERT     = 4'd1, 
            SCK_HIGH    = 4'd2, 
            SCK_LOW     = 4'd3, 
            CAPTURE     = 4'd4,
            SEND_HIBYTE = 4'd5,
            WAIT        = 4'd6,
            SEND_LOBYTE = 4'd7,
            DONE        = 4'd8;

reg [3:0] state=0,capture_state=0,tx_state=0;
reg [7:0] convert_count;
reg [7:0] count;
reg [11:0] voltage_data;
reg [11:0] current_data;
reg [15:0] adc_voltage_data_temp,adc_voltage_data_value;
reg [3:0] sck_count;
reg [3:0] index;

reg data_ready;
reg adc_sck_temp;
reg adc_data_valid_temp,adc_data_valid_temp_d;
reg laser_pulse_d1;

assign adc_sck = adc_sck_temp & data_ready;

always @(posedge clk,negedge rstn)
begin
    if (!rstn) begin
        adc_convert <= 0;     
        convert_count <= 0;     
        data_ready <= 0;     
        adc_sck_temp <= 0;     
        sck_count <= 0;     
        laser_pulse_d1 <= 0;     
        state <= IDLE;     
    end else begin
		      laser_pulse_d1 <= laser_pulse;
		
                    case (state)
                          IDLE : begin
                                    data_ready <= 0;
                                   // adc_convert <= 1;
									if (!laser_pulse_d1 & laser_pulse) begin
										adc_convert <= 0;
										state <= CONVERT;
									end else adc_convert <= 1;
                                 end
                       CONVERT : begin
                                    if (convert_count > 20) begin
                                        adc_convert <= 0;
                                        convert_count <= 0;
                                        data_ready <= 1;
                                        state <= SCK_HIGH;
                                    end else convert_count <= convert_count + 1;                                       
                                 end
                      SCK_HIGH : begin
                                    adc_sck_temp <= 1;
                                    state <= SCK_LOW;
                                 end
                       SCK_LOW : begin
                                    adc_sck_temp <= 0;
                                    if (sck_count > 12) data_ready <= 0;
                                    if (sck_count > 13) adc_convert <= 1;
                                    if (sck_count > 14) begin
                                        sck_count <= 0;
                                        state <= IDLE;
                                    end else begin
                                                sck_count <= sck_count + 1;
                                                state <= SCK_HIGH;
                                             end
                                 end
                    endcase
        end
end

always @(posedge adc_sck_temp,negedge rstn)
begin
    if (!rstn) begin
        index <= 13;     
        count <= 0;     
        adc_data_valid_temp <= 0; 
        adc_voltage_data_temp <= 0;    
        voltage_data <= 0;     
        capture_state <= IDLE;
    end else begin
                case(capture_state)
                        IDLE : begin
                                    adc_data_valid_temp <= 0;
                                    if (data_ready) capture_state <= CAPTURE;
                               end
                     CAPTURE : begin //4
                                    voltage_data[index] <= adc_sdo;
                                    if (count > 12) begin
                                        index <= 13;
                                        count <= 0;
                                        capture_state <= DONE;
                                    end else begin
                                                index <= index - 1;
                                                count <= count + 1;
                                             end

                              end
                       DONE : begin //8
                                    adc_data_valid_temp <= 1;
                                    adc_voltage_data_temp <= {4'h0,voltage_data};
                                    capture_state <= IDLE;
                              end
                endcase
            end
end

always @(posedge clk,negedge rstn, posedge clear_peak_power)
begin
    if (!rstn | clear_peak_power) begin
        adc_data_valid_temp_d <= 0;     
        adc_voltage_data_value <= 0;     
        adc_data_value <= 16'h0;     
        adc_data_valid <= 0;     
    end else begin
		           adc_data_valid_temp_d <= adc_data_valid_temp;
				   
                   if (!adc_data_valid_temp_d & adc_data_valid_temp) begin
                        adc_data_valid <= 1;
						adc_data_value <= adc_voltage_data_temp;
                   end else adc_data_valid <= 0;
					   
             end
end

endmodule

