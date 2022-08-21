`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 23:49:42
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
    
    reg a,b,cin;
    wire sum,carry;
    
    full_adder FA(.a(a),.b(b),.cin(cin),.sum(sum),.cout(carry));
    
    initial begin
    a = 1'b0;   b = 1'b0;   cin = 1'b0;
    #5 {a,b,cin} = 3'b001;
    #5 {a,b,cin} = 3'b010;
    #5 {a,b,cin} = 3'b011;
    #5 {a,b,cin} = 3'b100;
    #5 {a,b,cin} = 3'b101;
    #5 {a,b,cin} = 3'b110;
    #5 {a,b,cin} = 3'b111;
    #5 $finish;
    end
    
endmodule
