`timescale 1ns / 1ns
`include "full_sub_gl.v"
module full_sub_gl_tb;

 reg a, b, bin;
 wire d, bout; 

 full_sub_gl instantiation(.A(a), .B(b), .Bin(bin), .D(d), .Bout(bout));

 initial begin

   $dumpfile("full_sub_gl.vcd");
   $dumpvars;

   a=0; 
   b=0; 
   bin=0;

   #80 $finish;

 end

always #40 a=~a;
always #20 b=~b;
always #10 bin=~bin;
always @(a or b or bin)

   $monitor("At TIME(in ns)=%t, A=%d B=%d Bin=%d D = %d Bout = %d", $time, a, b, bin, d, bout);

endmodule