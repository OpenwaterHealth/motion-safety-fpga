`timescale 1ns / 100ps

module registers( 	   
	input		  		clk,				 
	input		  		rst,				 
	input		  		SCL,				 
	output [7:0] 	    data_to_i2c,			
	input		   		start,			    // Indicates that an I2C Start or a Repeat Start condition is received.
	input		   		stop,				// Indicates that an I2C Stop condition is received.
	input		   		data_vld,			// Data Valid signal
	input		   		r_w,				    // 0 = I2C Write Operation / 1 = I2C Read Operation
	input [7:0]   		i2c_to_data,
    output              stretch_on,
	
    input [15:0]  		temperature_sensor,
    input [7:0]     	revision,
    input [7:0]     	minor,
    input [7:0]     	major,
    input [7:0]     	ID,

    input [15:0]  		adc_data,
    input [7:0]   		monitor_status,
    input [7:0]   		status,

    output reg [31:0] pulse_width_lower_limit,
    output reg [31:0] pulse_width_upper_limit,
    output reg [31:0] rate_lower_limit,
    output reg [15:0] drive_current_limit,
    output reg [15:0] pwm_current_limit,
    output reg [15:0] cw_current_limit,
    output reg [15:0] pwm_mon_current_limit,
    output reg [15:0] cw_mon_current_limit,
    output reg [15:0] dynamic_control,
    output reg [15:0] static_control

)/* synthesis syn_preserve=1 */;
	   

//RAM Signals
reg [7:0]      data_out;
wire	 		wr_en_i;			

//Address Increment Signals
wire[7:0]		addr_i;			
reg[7:0]		addr_start;		
reg[7:0]		addr_i_reg;
reg[1:0]		byte_cnt;
reg[1:0]		state;
reg				data_vld_cnt;

//Other signals
wire			stretch_rst; 
reg  [3:0]		div_reg;		
wire [3:0]		div_next;  
reg	 [11:0]	stretch_cnt; 
wire			stretch_wire;
reg				skip_cnt;
reg [3:0]      count;
reg             data_vld_dly;
reg [7:0]      status_d1;

//Parameters
parameter		s0_r_w				=	2'b00;			// check if the request is read or write.
parameter		s1_rcv				=	2'b01;			// address increment when i2c master is writing.
parameter		s2_send				=	2'b10;			// address increment when i2c master is reading.
parameter		stretch_duration	=	4000;	        // Define the duration of the stretch in decimal value.

/**********************************************************************************
* Simple WRITE/READ
**********************************************************************************/
assign	data_to_i2c = (r_w) ? data_out : 8'h00;
assign	wr_en_i = ((data_vld) && (~r_w) && (byte_cnt == 1)) ? 1'b1 : 1'b0; // Write Enable control
assign stretch_on = stretch_wire;

/**********************************************************************************
* Simple Write Registers
**********************************************************************************/
always @ (posedge clk or posedge rst) begin
	if (rst) begin
	    count <= 0;
		pulse_width_lower_limit <= 32'h0002f8;    // 0x2F8=0x307-13
		pulse_width_upper_limit <= 32'h000321;    // 0x321=0x314+13
		rate_lower_limit <= 32'h013120;
		drive_current_limit <= 16'h2750;
		pwm_current_limit <= 16'h0258;
		cw_current_limit <= 16'h0320;
		pwm_mon_current_limit <= 16'h03a0;
		cw_mon_current_limit <= 16'h03a0;
		static_control <=0;
		dynamic_control <=0;
	end else begin
		       if (dynamic_control > 0) begin
				   if (count > 1) begin
					   count <= 0;
					   dynamic_control <= 0;
				   end else count <= count + 1;
			   end
			   
			   if (wr_en_i) begin
				   case (addr_i)
						 8'h0 : pulse_width_lower_limit[7:0]      <= i2c_to_data;
					     8'h1 : pulse_width_lower_limit[15:8]     <= i2c_to_data;
						 8'h2 : pulse_width_lower_limit[23:16]    <= i2c_to_data;
					     8'h3 : pulse_width_lower_limit[31:24]    <= i2c_to_data;
					     8'h4 : pulse_width_upper_limit[7:0]      <= i2c_to_data;
					     8'h5 : pulse_width_upper_limit[15:8]     <= i2c_to_data;
					     8'h6 : pulse_width_upper_limit[23:16]    <= i2c_to_data;
					     8'h7 : pulse_width_upper_limit[31:24]    <= i2c_to_data;
						 8'h8 : rate_lower_limit[7:0]  		   <= i2c_to_data;
					     8'h9 : rate_lower_limit[15:8] 		   <= i2c_to_data;
					     8'hA : rate_lower_limit[23:16] 		   <= i2c_to_data;
					     8'hB : rate_lower_limit[31:24] 		   <= i2c_to_data;
						 8'h10 : drive_current_limit[7:0]    <= i2c_to_data;
						 8'h11 : drive_current_limit[15:8]   <= i2c_to_data;
						 8'h12 : pwm_current_limit[7:0]     <= i2c_to_data;
						 8'h13 : pwm_current_limit[15:8]    <= i2c_to_data;
					     8'h14 : cw_current_limit[7:0]      <= i2c_to_data;
						 8'h15 : cw_current_limit[15:8]      <= i2c_to_data;
					     8'h16 : pwm_mon_current_limit[7:0]  <= i2c_to_data;
						 8'h17 : pwm_mon_current_limit[15:8] <= i2c_to_data;
					    8'h18 : cw_mon_current_limit[7:0]   <= i2c_to_data;
					    8'h19 : cw_mon_current_limit[15:8]  <= i2c_to_data;
					    8'h20 : static_control[7:0]  	     <= i2c_to_data;
				   	    8'h21 : static_control[15:8] 		 <= i2c_to_data;
					    8'h22 : dynamic_control[7:0]  	     <= i2c_to_data;
					    8'h23 : dynamic_control[15:8] 	     <= i2c_to_data;
					endcase
				end
			end
end

/**********************************************************************************
* Simple Read Registers
**********************************************************************************/
always @ (posedge clk or posedge rst) begin
	if (rst)
		begin
			data_out <= 0;
			status_d1 <= 0;
		end
	else 
		begin
			   status_d1 <= status;
		        case (addr_i)
					  8'h0 : data_out <= pulse_width_lower_limit[7:0];
					  8'h1 : data_out <= pulse_width_lower_limit[15:8];
					  8'h2 : data_out <= pulse_width_lower_limit[23:16];
					  8'h3 : data_out <= pulse_width_lower_limit[31:24];
					  8'h4 : data_out <= pulse_width_upper_limit[7:0];
					  8'h5 : data_out <= pulse_width_upper_limit[15:8];
					  8'h6 : data_out <= pulse_width_upper_limit[23:16];
					  8'h7 : data_out <= pulse_width_upper_limit[31:24];
					  8'h8 : data_out <= rate_lower_limit[7:0];
					  8'h9 : data_out <= rate_lower_limit[15:8];
					  8'hA : data_out <= rate_lower_limit[23:16];
					  8'hB : data_out <= rate_lower_limit[31:24];
					  8'h10 : data_out <= drive_current_limit[7:0];
					  8'h11 : data_out <= drive_current_limit[15:8];
					  8'h12 : data_out <= pwm_current_limit[7:0];
					  8'h13 : data_out <= pwm_current_limit[15:8];
					  8'h14 : data_out <= cw_current_limit[7:0];
					  8'h15 : data_out <= cw_current_limit[15:8];
					  8'h16 : data_out <= pwm_mon_current_limit[7:0];
					  8'h17 : data_out <= pwm_mon_current_limit[15:8];
				     8'h18 : data_out <= cw_mon_current_limit[7:0];
				     8'h19 : data_out <= cw_mon_current_limit[15:8];
				     8'h1A : data_out <= temperature_sensor[7:0];
					 8'h1B : data_out <= temperature_sensor[15:8];
				     8'h1C : data_out <= adc_data[7:0];  //24
					 8'h1D : data_out <= adc_data[15:8];
					 8'h1E : data_out <= monitor_status;
					 8'h20 : data_out <= static_control[7:0];
					 8'h21 : data_out <= static_control[15:8];
					 8'h22 : data_out <= dynamic_control[7:0];
					 8'h23 : data_out <= dynamic_control[15:8];
					 8'h24 : data_out <= status_d1;
					 8'h25 : data_out <= revision;
					 8'h26 : data_out <= minor;
					 8'h27 : data_out <= major;
					 8'h28 : data_out <= ID;

					 default : data_out <= 0;
				endcase
		end
end

/**********************************************************************************
* Start Address Routine
**********************************************************************************/
always @ (negedge clk or posedge rst)
	if (rst)
		begin
			addr_start <= 0;
			data_vld_cnt <=0;
			data_vld_dly <=0;
		end
	else 
		begin
			data_vld_dly <= data_vld;
			if ((start == 1) && (data_vld_cnt == 0))
				begin
					data_vld_cnt <= 1;
				end
			else if ((data_vld) && (~r_w) && (data_vld_cnt == 1)) 
				begin
					addr_start <= i2c_to_data;
					data_vld_cnt <= 0;
				end
		end

/**********************************************************************************
* Address Increment FSM.
**********************************************************************************/
always @ (posedge data_vld_dly or posedge start or posedge rst or posedge stop) 
//always @ (posedge data_vld or posedge start or posedge rst or posedge stop) 
begin
	if ((rst) || (start) || (stop))
		begin
			state <= 0;
			addr_i_reg <= addr_start;
			byte_cnt <= 0;
		end
	else case (state)
		s0_r_w: begin
				if (~r_w)
					begin
						addr_i_reg <= i2c_to_data; //First received byte will be the new start address.
//						addr_start <= data_out; 
						state <= s1_rcv;
					end
				else if (r_w)
					begin
						addr_i_reg <= addr_start; //Reading will start on the defined start address.
						state <= s2_send;
					end
				else
					state <= s0_r_w;
			end
		s1_rcv: begin
				if (byte_cnt == 0)
					begin
						byte_cnt <= byte_cnt + 1; // Skip writing the first read data byte to the start address
					end
				else if (byte_cnt == 1)
					addr_i_reg <= addr_i_reg + 1;
				else
					state <= s1_rcv;
			end
		s2_send: begin
					addr_i_reg <= addr_i_reg + 1;
			end
		default: state <= s0_r_w;
									
	endcase				
end
assign addr_i = addr_i_reg;

/**********************************************************************************
* Stretch Test (Optional)
**********************************************************************************/
	always @ (negedge clk or posedge rst or posedge stretch_rst) // Stretch Duration Counter
		if ((rst) || (stretch_rst))
			stretch_cnt <= 0;
		else 
		begin
			if ((div_reg > 6) && (stretch_cnt != stretch_duration))
			stretch_cnt <= stretch_cnt + 1;
			else
			stretch_cnt <= 0;
		end
	assign #1 stretch_rst = ((div_reg == 8) && (stretch_cnt == stretch_duration)) ? 1'b1 : 1'b0;


	always @ (negedge SCL or posedge rst or posedge start or posedge stop or posedge stretch_rst) // SCL Counter
		if ((rst) || (start) || (stop) || (stretch_rst))
			begin
				div_reg <= 0;
				skip_cnt <= 0;
			end
		else 
		begin
			if (div_reg < 8)
				begin
					if (skip_cnt == 0)
						skip_cnt <= 1;
					else
						div_reg <= div_next;
				end			
			else
				div_reg <= 0;
		end	
	assign #1 div_next = div_reg + 1;
	
`ifdef stretch_test
	assign stretch_wire = (div_reg > 6) ? 1'b1 : 1'b0;
`else
	assign stretch_wire = 1'b0;
`endif



endmodule