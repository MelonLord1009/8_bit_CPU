`timescale 1ns/1ns

//8-bit OR 
module OR(a,b,c);
    input [7:0] a;
    input [7:0] b;
    output [7:0] c;
    // Multiple instantiation of or gates
    or a1 [7:0] (c[7:0],a[7:0],b[7:0]);
endmodule