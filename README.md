# 8_bit_CPU

To run the program run the following command lines individually and in the 
given order after going into the folder named CPU-

  
1> iverilog ADD.v AND.v AND18.v CU.v CU_tb.v DEC.v DECO.v FA.V HA.v INC.v NOT.v OR.v SUB.v

2> vvp a.out

3> gtkwave CU.vcd
