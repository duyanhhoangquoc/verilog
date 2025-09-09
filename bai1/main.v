timescale 1ns / 1ps
module testbench;
    reg a, b;
    wire s, c;
    H_adder dut(
        .a(a),
        .b(b),
        .s(s),
        .c(c)
    );
    //H_adder dut(a, b, s, c);

    initial begin
        a = 0; b = 0;

        #20;
        a = 1, b = 0;
        

endmodule