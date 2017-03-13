`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 11:07:45 AM
// Design Name: 
// Module Name: tb_my_mul
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


module tb_my_mul;

  parameter BITWIDTH = 32;
  
  reg [BITWIDTH-1:0] ain;
  reg [BITWIDTH-1:0] bin;
  wire [BITWIDTH-1:0] dout;
  wire overflow;
   
  my_mul my_mul1(ain, bin, dout, overflow);
  
  initial begin
   ain = 32'b10111111111111111111111111111111;
   bin = 32'b11111111111111111111111111111111;
  end 
endmodule