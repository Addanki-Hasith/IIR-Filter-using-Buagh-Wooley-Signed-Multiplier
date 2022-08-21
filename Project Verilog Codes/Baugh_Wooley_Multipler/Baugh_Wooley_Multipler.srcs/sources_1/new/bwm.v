`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2022 12:12:29
// Design Name: 
// Module Name: bwm
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


module bwm(
    output [6:0] Y,
    input [3:0] A,
    input [3:0] B
    );
    wire a0b0,a1b0,a2b0,a3b0;
    wire a0b1,a1b1,a2b1,a3b1;
    wire a0b2,a1b2,a2b2,a3b2;
    wire a0b3,a1b3,a2b3,a3b3;
    
    wire n_a3b0,n_a3b1,n_a3b2,n_a0b3,n_a1b3,n_a2b3;
    
    product_terms pt(A,B,Y[0],a1b0,a2b0,n_a3b0,a0b1,a1b1,a2b1,n_a3b1,a0b2,a1b2,a2b2,n_a3b2,n_a0b3,n_a1b3,n_a2b3,a3b3);
    
    
    
    
    wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15;
    wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
    
//    and (Y[0],A[0],B[0]);
//    and (a1b0,A[1],B[0]);
//    and (a2b0,A[2],B[0]);
//    and (a3b0,A[3],B[0]);
    
//    and (a0b1,A[0],B[1]);
//    and (a1b1,A[1],B[1]);
//    and (a2b1,A[2],B[1]);
//    and (a3b1,A[3],B[1]);
    
//    and (a0b2,A[0],B[2]);
//    and (a1b2,A[1],B[2]);
//    and (a2b2,A[2],B[2]);
//    and (a3b2,A[3],B[2]);
    
//    and (a0b3,A[0],B[3]);
//    and (a1b3,A[1],B[3]);
//    and (a2b3,A[2],B[3]);
//    and (a3b3,A[3],B[3]);
    
//    not (n_a3b0,a3b0);
//    not (n_a3b1,a3b1);
//    not (n_a3b2,a3b2);
//    not (n_a0b3,a0b3);
//    not (n_a1b3,a1b3);
//    not (n_a2b3,a2b3);
    
    half_adder HA1(Y[1],c1,a0b1,a1b0);
    half_adder HA2(s1,c2,a1b1,a2b0);
    half_adder HA3(s2,c3,a2b1,n_a3b0);
    
    full_adder FA1(Y[2],c4,a0b2,c1,s1);
    full_adder FA2(s3,c5,a1b2,s2,c2);
    
    full_adder FA3(Y[3],c6,n_a0b3,c4,s3);
    full_adder FA4(s4,c7,a2b2,n_a3b1,c3);
    full_adder FA5(s5,c8,n_a1b3,c5,s4);
    
    full_adder FA6(Y[4],c9,1'b1,s5,c6);
    full_adder FA7(s6,c10,n_a3b2,n_a2b3,c7);
    half_adder HA4(s7,c11,s6,c8);
    
    half_adder HA5(Y[5],c12,s7,c9);
    half_adder HA6(s8,c13,a3b3,c10);
    half_adder HA7(s9,c14,s8,c11);
    
    half_adder HA8(Y[6],c15,s9,c12);
    
endmodule
