`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 01:48:47 PM
// Design Name: 
// Module Name: tb_MUX_2to1
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


module tb_MUX_2to1;
    reg[1:0] in0, in1;
    reg sel;    
    wire[1:0] out;
    
    MUX_2to1 mux1(in0, in1, sel, out);
    
    initial begin
            sel=0;  in0=1;  in1=2;
        #10 sel=1;  in0=1;  in1=3;
        #10 sel=0;
        #10         in0=0;
    end
endmodule
