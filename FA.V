`timescale 1ns/1ns

// Full Adder
module FA(a,b,cin,sum,cout);
    input a,b,cin;
    wire s1,c1,c2; 
    output sum,cout;
    HA h1(a,b,s1,c1);
    HA h2(s1,cin,sum,c2);
    or (cout,c1,c2);
endmodule

