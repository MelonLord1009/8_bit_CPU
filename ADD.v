`timescale 1ns/1ns

// 8-bit Adder 
module ADD(a,b,c);
    input [7:0] a;
    input [7:0] b;
    wire [8:0] carry;
    output [7:0] c;
    buf (carry[0],0);
    // Ripple carry adder implementation
    FA f[8:1] (a[7:0],b[7:0],carry[7:0],c[7:0],carry[8:1]);
endmodule