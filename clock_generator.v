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

module clock_generator( 
    input  rstn,
    input  clk,

    output reg clk_div2
);

   always @(posedge clk or negedge rstn) begin
      if(!rstn) begin
         clk_div2 <= 0;
      end else begin
         clk_div2 <= ~clk_div2;
      end
   end


endmodule

