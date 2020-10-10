module full_subtractor_df(output D, B, input X, Y, Z);

assign D=X^Y^Z;
assign B=~X & (Y^Z) | Y & Z;

endmodule