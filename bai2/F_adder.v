module F_adder(a, b, c_out, s);
    input [3:0] a,b;
    output wire [3:0] s;
    output wire c_out;

    assign {c_out, s} = a + b;
endmodule