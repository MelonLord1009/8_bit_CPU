`timescale 1ns/1ns

module AND18(a,b,c);
    input [7:0] a;
    wire [7:0] hold;
    input b;
    output [7:0] c;
    //assigning value of b to each bit in wire hold
    buf (hold[0],b);
    buf (hold[1],b);
    buf (hold[2],b);
    buf (hold[3],b);
    buf (hold[4],b);
    buf (hold[5],b);
    buf (hold[6],b);
    buf (hold[7],b);
    and ad [7:0] (c[7:0],a[7:0],hold[7:0]);
endmodule