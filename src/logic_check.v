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

module logic_check( 
    input           rstn,
    input           clk,
    input           clear_fail,
    input           laser_pulse,

    input [31:0]    pulse_width_lower_limit,
    input [31:0]    pulse_width_upper_limit,
    input [31:0]    rate_lower_limit,
    input [31:0]    rate_upper_limit,

    output reg      pulse_lower_limit_fail,
    output reg      pulse_upper_limit_fail,
    output reg      rate_lower_limit_fail,
    output reg      rate_upper_limit_fail,

    output reg      width_limit_window,
    output reg      rate_limit_window
);

parameter   IDLE         = 0,
            WIDTH_CHECK  = 1,
            RATE_CHECK   = 2, 
            CHECK_WINDOW = 3, 
            DONE         = 4;

reg [3:0]  state,window_state;
reg        laser_pulse_d1,laser_pulse_d2,laser_pulse_d3,laser_pulse_d4,laser_pulse_d5;
reg [31:0] count,window_count;
reg        edge_detect_1st,edge_detect_2nd;
reg pulse_width_limit_window;

always @(posedge clk,negedge rstn)
begin
    if (!rstn) begin
        count <= 0;
        laser_pulse_d1 <= 0;     
        laser_pulse_d2 <= 0;     
        laser_pulse_d3 <= 0;     
        laser_pulse_d4 <= 0;     
        laser_pulse_d5 <= 0; 
        edge_detect_1st <= 0;    
        edge_detect_2nd <= 0;  
  
        pulse_lower_limit_fail <= 0;
        pulse_upper_limit_fail <= 0;
        rate_lower_limit_fail <= 0;
        rate_upper_limit_fail <= 0;
        state <= IDLE;
    end else begin
                laser_pulse_d1 <= laser_pulse;
                laser_pulse_d2 <= laser_pulse_d1;
                laser_pulse_d3 <= laser_pulse_d2;
                laser_pulse_d4 <= laser_pulse_d3;
                laser_pulse_d5 <= laser_pulse_d4;
                if (!laser_pulse_d1 & laser_pulse) edge_detect_1st <= 1; else edge_detect_1st <= 0;
                if (laser_pulse_d1 & !laser_pulse) edge_detect_2nd <= 1; else edge_detect_2nd <= 0;
				
                case(state)
                     IDLE : begin
                                edge_detect_2nd <= 0;
                                if (!laser_pulse_d1 & laser_pulse) begin
                                     count <= count + 1;
                                     state <= WIDTH_CHECK;
                                end else count <= 0;
                            end
               WIDTH_CHECK: begin
				                count <= count + 1;
                                if (!laser_pulse_d1) begin
                                    if (count > pulse_width_upper_limit) begin
                                        pulse_upper_limit_fail <= 1;
                                        state <= DONE;
                                    end else begin
												if (count < pulse_width_lower_limit) begin
													pulse_lower_limit_fail <= 1;
													state <= DONE;
												end else state <= RATE_CHECK;
											 end
                                end  
                            end
               RATE_CHECK: begin
                                if (laser_pulse_d1) begin
                                    if (count > rate_upper_limit) begin
                                        rate_upper_limit_fail <= 1;
                                        state <= DONE;
                                    end  
                                    if (count < rate_lower_limit) begin
                                        rate_lower_limit_fail <= 1;
                                        state <= DONE;
                                    end
									count <= 1;
									state <= WIDTH_CHECK;
                                end else begin
											if (count > rate_upper_limit) state <= IDLE;
											count <= count + 1;
										 end
                            end
                     DONE : begin
                                if (pulse_lower_limit_fail | pulse_upper_limit_fail | rate_lower_limit_fail | rate_upper_limit_fail) begin
                                    if (clear_fail) begin
                                        count <= 0;
                                        pulse_lower_limit_fail <= 0;
                                        pulse_upper_limit_fail <= 0;
                                        rate_lower_limit_fail <= 0;
                                        rate_upper_limit_fail <= 0;
                                        state <= IDLE;
                                    end
                                end 
                            end

                endcase
            end
end

always @(posedge clk,negedge rstn)
begin
    if (!rstn) begin
        window_count <= 0;
        pulse_width_limit_window <= 0;
        rate_limit_window <= 0;
        window_state <= IDLE;
    end else begin
                case(window_state)
                     IDLE : begin
                                if (edge_detect_1st) begin
                                    window_count <= window_count + 1;
                                    window_state <= CHECK_WINDOW;
                                end
                            end
              CHECK_WINDOW: begin
                                if (window_count == pulse_width_lower_limit) pulse_width_limit_window <= 1;
                                if (window_count == pulse_width_upper_limit) begin
                                    window_count <= 0;
                                    pulse_width_limit_window <= 0;
                                    window_state <= IDLE;
                                end else begin
                                              window_count <= window_count + 1;
                                         end
                            end
                endcase
            end
end


endmodule

