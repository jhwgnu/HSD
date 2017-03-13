`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 02:04:33 PM
// Design Name: 
// Module Name: tb_Dflipflop
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


module tb_Dflipflop;
    reg din, clk, rst;
    
    Dflipflop dff(din, clk, rst, q);
    
    always #100 clk=~clk;
    
    initial begin        
        din = 0; clk = 0; rst = 0;
        #150 din = 1;
        #240 rst = 1;
        #320 rst = 0;
        #390 din = 1;        
    end

endmodule
