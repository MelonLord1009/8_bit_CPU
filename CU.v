`timescale 1ns/1ns

module CU(Instruction,Result);
    input [18:0] Instruction;
    wire [7:0] o2; // second operand
    wire [7:0] o1; // first operand
    wire [2:0] oc; //opcode
    wire [7:0] sel; // 8-bit select line
    output [7:0] Result;
    wire [7:0] A1,A2,A3,A4,A5,A6,A7;
    wire [7:0] B1,B2,B3,B4,B5,B6,B7;
    // assigning values to first operand, second operand and opcode 
    buf b1 [2:0] (oc[2:0],Instruction[18:16]);
    buf b2 [7:0] (o1[7:0],Instruction[15:8]);
    buf b3 [7:0] (o2[7:0],Instruction[7:0]);
    // assigning the select line its corresponding value
    DECO deco(oc,sel);
    // All code below this acts as the multiplexer
    // evaluating results for each operation
    ADD add(o1,o2,B1);
    // And the output with the corresponding bit in the select line 
    //we do these two steps for all 7 operations
    AND18 or1(B1,sel[1],A1);
    SUB sub(o1,o2,B2);
    AND18 or2(B2,sel[2],A2);
    INC inc(o1,B3);
    AND18 or3(B3,sel[3],A3);
    DEC dec(o1,B4);
    AND18 or4(B4,sel[4],A4);
    AND ad(o1,o2,B5);
    AND18 or5(B5,sel[5],A5);
    OR aor (o1,o2,B6);
    AND18 or6(B6,sel[6],A6);
    NOT nt(o1,B7);
    AND18 or7(B7,sel[7],A7);
    // or all the finals outputs of the operations to get the desired result
    or o [7:0] (Result[7:0],A1[7:0],A2[7:0],A3[7:0],A4[7:0],A5[7:0],A6[7:0],A7[7:0]);
endmodule