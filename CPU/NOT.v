`timescale 1ns/1ns

//8-bit NOT 
module NOT(a,b);
    input [7:0] a;
    output [7:0] b;
    // Multiple instantiation of not gates
    not n [7:0] (b[7:0],a[7:0]);
endmodule