`timescale 1ns/1ns

module CU_tb;
    reg[18:0] Instruction;
    wire[7:0] Result;
    CU cu_uut(Instruction,Result);
    initial begin
        $dumpfile("CU.vcd");
        $dumpvars(0,CU_tb);
        Instruction=19'b0010010001100010100;
        #20
        $display("%b",Result);
        Instruction=19'b0100010001100010100;
        #20 
        $display("%b",Result);
        Instruction=19'b0110010001100010100;
        #20
        $display("%b",Result);
        Instruction=19'b1000010001100010100;
        #20
        $display("%b",Result);
        Instruction=19'b1010010001100010100;
        #20
        $display("%b",Result);
        Instruction=19'b1100010001100010100;
        #20
        $display("%b",Result);
        Instruction=19'b1110010001100010100;
        #20
        $display("%b",Result);
        $display("End of Test\n");
        $finish;
    end
endmodule