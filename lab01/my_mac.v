`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 11:10:52 AM
// Design Name: 
// Module Name: my_mac
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


module my_mac(
  ain,
  bin,
  en,
  dout,
  overflow  
);
    parameter BITWIDTH = 32;
    
    input [BITWIDTH-1:0] ain;
    input [BITWIDTH-1:0] bin;
    input en;
    output [BITWIDTH-1:0] dout;
    output reg overflow;

    reg [64:0] sum = 0;
    
    assign dout = sum[31:0];
    
    always @(en or ain or bin)
        begin
            if (en) 
            begin
                sum = sum + ain * bin;
                overflow = |sum[64:32];
            end
            else
            begin
                sum = 0;
                overflow = 0;   
            end
        end
endmodule
