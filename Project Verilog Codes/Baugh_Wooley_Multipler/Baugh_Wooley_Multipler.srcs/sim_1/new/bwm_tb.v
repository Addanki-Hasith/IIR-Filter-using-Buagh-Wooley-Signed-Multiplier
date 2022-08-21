`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2022 14:03:15
// Design Name: 
// Module Name: bwm_tb
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


module bwm_tb();
    reg [3:0]a,b;
    wire [6:0] y;
    bwm mul1(.Y(y),.A(a),.B(b));
    
    initial begin
    a = 4'b0110;
    b = 4'b0010;
    #5 $finish;
    end
    
endmodule
