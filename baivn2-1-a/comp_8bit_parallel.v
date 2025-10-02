module comp_8bit_parallel(
    input [7:0] a,b,
    output a_gt_b,  // a lon hon b
    output a_eq_b,  // a bang b
    output a_lt_b   // a nho hon b
);

assign a_gt_b = (a>b);
assign a_eq_b = (a==b);
assign a_lt_b = (a<b);

endmodule