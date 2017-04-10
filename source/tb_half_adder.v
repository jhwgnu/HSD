`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 01:29:01 PM
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder;

    reg a, b;
    
    half_adder half_adder1(a, b, sum, cout);
    
    initial begin
            a=0; b=0;
        #10 a=1;
        #10 a=0; b=1;
        #10 a=1;
        #10 a=0; b=0;
    end
endmodule
