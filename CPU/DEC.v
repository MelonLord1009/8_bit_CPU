`timescale 1ns/1ns

//Decrement 
module DEC(a,b);
    input [7:0] a;
    wire [7:0] c;
    output [7:0] b;
    // assigning wire c the value (11111111)₂ i.e 2's complement of (00000001)₂
    buf (c[0],1);
    buf (c[1],1);
    buf (c[2],1);
    buf (c[3],1);
    buf (c[4],1);
    buf (c[5],1);
    buf (c[6],1);
    buf (c[7],1);
    ADD add(a,c,b);
endmodule