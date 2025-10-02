module comp_8bit_seq(
    input [7:0] a,b,
    output reg a_gt_b,
    output reg a_eq_b,
    output reg a_lt_b
);

always @(*) begin
    if (a > b) begin    //a lon hon b
        a_gt_b = 1'b1;
        a_eq_b = 1'b0;
        a_lt_b = 1'b0;
    end
    else if (a == b) begin  //a bang b
        a_gt_b = 1'b0;
        a_eq_b = 1'b1;
        a_lt_b = 1'b0;
    end
    else begin  //a nho hon b
        a_gt_b = 1'b0;
        a_eq_b = 1'b0;
        a_lt_b = 1'b1;
    end
end
endmodule