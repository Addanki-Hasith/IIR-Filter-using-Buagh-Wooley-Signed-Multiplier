`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2022 16:22:05
// Design Name: 
// Module Name: IIR_filter
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


module IIR_filter(clk,rst,a,x,y);
    input clk,rst;
    input[3:0]a,x;
    output[3:0]y;
    reg[3:0]y_val;// register to store intermediate value ofy
    wire[6:0]baugh_prod_actual;// BW multiplier product
    
    bwm bm1(baugh_prod_actual,a,y_val);
    always@(posedge clk)
        begin
         if(rst)begin
           y_val<=x;
         end
         else begin
           y_val<=x+baugh_prod_actual[3:0];
         end
        end
    assign y=y_val;
endmodule