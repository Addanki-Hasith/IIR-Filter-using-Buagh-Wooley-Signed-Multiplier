`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 23:38:38
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    output sum,
    output cout,
    input a,
    input b,
    input cin
    );
    wire s1,c1,c2;
    
    // instantiating HALF ADDERs
    half_adder HA1(s1,c1,a,b);
    half_adder HA2(sum,c2,s1,cin);
    or OR1(cout,c2,c1);
    
    // just a trail
    reg [2:0] input_val;
    always@(a,b,cin)
    begin
        input_val <={a,b,cin};
    end
    
    
endmodule
