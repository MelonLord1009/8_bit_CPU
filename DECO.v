`timescale 1ns/1ns

// Decoder 
module DECO(a,b);
    input [2:0] a;
    wire [2:0] abar;  
    output [7:0] b;
    not n [2:0] (abar[2:0],a[2:0]);
    // (000)₂ doesn't correspond to any operation the lsb of select line is set to 0 
    buf (b[0],0);
    // remaining bits of select line are set to respective minterms
    and (b[1],abar[2],abar[1],a[0]);
    and (b[2],abar[2],a[1],abar[0]);
    and (b[3],abar[2],a[1],a[0]);
    and (b[4],a[2],abar[1],abar[0]);
    and (b[5],a[2],abar[1],a[0]);
    and (b[6],a[2],a[1],abar[0]);
    and (b[7],a[2],a[1],a[0]);
endmodule