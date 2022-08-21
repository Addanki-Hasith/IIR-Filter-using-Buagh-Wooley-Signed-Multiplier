`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 21:59:45
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
    
    reg a,b;
    wire s,c;
    
    half_adder HA(.a(a),.b(b),.sum(s),.cout(c));
    initial begin
    a = 1'b0;   b = 1'b0;
    #10 a = 1'b1;
    #10 b = 1'b1; a = 1'b0;
    #10 a = 1'b1;
    #10 $finish;
    end
endmodule
