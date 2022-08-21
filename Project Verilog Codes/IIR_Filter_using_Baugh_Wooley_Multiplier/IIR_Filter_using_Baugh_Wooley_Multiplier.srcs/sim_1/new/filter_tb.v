`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2022 16:36:08
// Design Name: 
// Module Name: filter_tb
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


module filter_tb();
    reg clk,rst;
    reg[3:0]a,x;
    wire[3:0]y;
    IIR_filter IIR1(.clk(clk),.rst(rst),.a(a),.x(x),.y(y));
    initial begin
      clk=0;
      #50 $finish;
    end
    always
      #5clk=!clk;
    initial begin
      rst=1;
      a=4'd2;
      x=4'd1;
      #10 rst=0;
      a=4'd2;
      x=4'd1;
     /*#10 rst=1;
        a=4'd7;
        x=4'd10;*/
    end
endmodule
