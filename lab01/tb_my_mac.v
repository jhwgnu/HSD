`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 11:59:43 AM
// Design Name: 
// Module Name: tb_my_mac
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


module tb_my_mac;
 parameter BITWIDTH = 32;
  
  reg [BITWIDTH-1:0] ain;
  reg [BITWIDTH-1:0] bin;
  reg en;
  wire [BITWIDTH-1:0] dout;
  wire overflow;
  
  my_mac my_mac1(ain, bin, en, dout, overflow);
   
   initial begin
   en = 0;
   #100;
   en = 1;
   ain = 32'b10111111111111111111111111111111;
   bin = 32'b11111111111111111111111111111111;
   #100;
   ain = 3;
   bin = 4;
   #100;
   ain = 5;
   bin = 6;
  end 
endmodule
