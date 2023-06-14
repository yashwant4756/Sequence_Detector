`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2023 10:53:37
// Design Name: 
// Module Name: Sequence_det_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Sequence_det_tb(
 );
 reg sequence_in;
 reg clock;
 reg reset;
 
 wire detector_out;
 sequence_det_moore utt(
 .sequence_in(sequence_in),
 .clock(clock),
 .reset(reset),
 .detector_out(detector_out)
 );
 initial begin
 clock=0;
 forever #5 clock=~clock;
 end
 initial begin
 sequence_in=0;
 reset =1;
 
 #30;
 reset=0;
 #40;
 sequence_in=1;
  #10;
 sequence_in=0;
  #10;
 sequence_in=1;
  #20;
 sequence_in=0;
  #20;
 sequence_in=1;
  #20;
 sequence_in=0;
 end
endmodule
