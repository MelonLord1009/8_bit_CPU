`timescale 1ns/1ns

// 8-bit subtractor 
module SUB(a,b,c);
    input [7:0] a;
    input [7:0] b;
    wire [7:0] bbar;
    wire [7:0] b2c; // b2c is the 2's complement of b
    output [7:0] c;
    NOT n(b,bbar);
    INC i(bbar,b2c); // b2c = b' + 1
    ADD add(a,b2c,c); // Adding the 2's complement of second operand 
endmodule
