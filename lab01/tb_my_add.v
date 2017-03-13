`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 10:48:58 AM
// Design Name: 
// Module Name: my_add_test
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


module my_add_test;
   
   parameter BITWIDTH = 32;
   
   reg [BITWIDTH-1:0] ain;
   reg [BITWIDTH-1:0] bin;
   wire [BITWIDTH-1:0] dout;
//   wire overflow;
    
   my_add my_add1(ain, bin, dout, overflow);
   
   initial begin
    ain = 3;
    bin = 4;
   end 
endmodule
