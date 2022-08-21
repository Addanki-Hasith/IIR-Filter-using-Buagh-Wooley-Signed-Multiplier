`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2022 14:11:25
// Design Name: 
// Module Name: product_terms
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


module product_terms(
    input [3:0] a,
    input [3:0] b,
    output a0b0,a1b0,a2b0,n_a3b0,a0b1,a1b1,a2b1,n_a3b1,a0b2,a1b2,a2b2,n_a3b2,n_a0b3,n_a1b3,n_a2b3,a3b3
    );
    wire w1,w2,w3,w4,w5,w6;
    and (a0b0,a[0],b[0]);
    and (a1b0,a[1],b[0]);
    and (a2b0,a[2],b[0]);
    and (w1,a[3],b[0]);
    not (n_a3b0,w1);
    and (a0b1,a[0],b[1]);
    and (a1b1,a[1],b[1]);
    and (a2b1,a[2],b[1]);
    and (w2,a[3],b[1]);
    not (n_a3b1,w2);
    and (a0b2,a[0],b[2]);
    and (a1b2,a[1],b[2]);
    and (a2b2,a[2],b[2]);
    and (w3,a[3],b[2]);
    not (n_a3b2,w3);
    and (w4,a[0],b[3]);
    and (w5,a[1],b[3]);
    and (w6,a[2],b[3]);
    not (n_a0b3,w4);
    not (n_a1b3,w5);
    not (n_a2b3,w6);
    and (a3b3,a[3],b[3]);
    
endmodule
