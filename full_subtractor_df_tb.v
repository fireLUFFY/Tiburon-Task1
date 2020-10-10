`timescale 1ns / 1ns
`include "full_subtractor_df.v"

module full_subtractor_df_tb;

wire D, B;
reg X, Y, Z;
full_subtractor_df Instance0 (D, B, X, Y, Z);

initial begin
    X = 0; Y = 0; Z = 0;
#1  X = 0; Y = 0; Z = 1;
#1  X = 0; Y = 1; Z = 0;
#1  X = 0; Y = 1; Z = 1;
#1  X = 1; Y = 0; Z = 0;
#1  X = 1; Y = 0; Z = 1;
#1  X = 1; Y = 1; Z = 0;
#1  X = 1; Y = 1; Z = 1;
end

initial begin
    $monitor ("%t, X = %d| Y = %d| Z = %d| B = %d| D = %d", $time, X, Y, Z, B, D);
    $dumpfile("full_subtractor_df.vcd");
    $dumpvars();
    $display("complete");
end

endmodule