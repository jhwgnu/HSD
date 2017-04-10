`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 01:39:59 PM
// Design Name: 
// Module Name: MUX_2to1
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


module MUX_2to1(in0, in1, sel, out);
    input [1:0] in0, in1;
    input sel;
    output [1:0] out;
    reg [1:0] out;
    
    always @(sel or in0 or in1) begin
        if(sel==0)
            out = in0;
        else
            out = in1;
    end            
endmodule
