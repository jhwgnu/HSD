`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 11:06:02 AM
// Design Name: 
// Module Name: my_mul
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


module my_mul(
  ain,
  bin,
  dout,
  overflow  
);
    parameter BITWIDTH = 32;
    
    input [BITWIDTH-1:0] ain;
    input [BITWIDTH-1:0] bin;
    output [BITWIDTH-1:0] dout;
    output overflow;
 
    wire [63:0] result;
    assign result = ain * bin;
    assign dout = result[31:0];
    assign overflow = |result[63:32];
    
endmodule
