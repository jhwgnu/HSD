`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 02:01:10 PM
// Design Name: 
// Module Name: Dflipflop
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


module Dflipflop(din, clk, rst, q);
    input din, clk, rst;
    output reg q;
    
    always @(posedge clk or posedge rst)
    begin
        if(rst==1)
            q<=0;
        else
            q<=din;
    end
    
endmodule
