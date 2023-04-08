`timescale 1ns/1ns

// Increment  
module INC(a,b);
    input [7:0] a;
    wire [7:0] c;
    output [7:0] b;
    // assigning wire c the value (00000001)₂
    buf (c[7],0);
    buf (c[6],0);
    buf (c[5],0);
    buf (c[4],0);
    buf (c[3],0);
    buf (c[2],0);
    buf (c[1],0);
    buf (c[0],1);
    ADD add(a,c,b);
endmodule