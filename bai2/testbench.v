timescale 1ns / 1ps
module testbench;
    reg [3:0] a,b;
    wire [3:0] s;
    wire c_out;

    F_adder dut(
        .a(a),
        .b(b),
        .s(s),
        .c_out(c_out)
    );

    initial begin
        a=4'd0;
        b=4'd0;
        #10;
        a=4'd1;
        b=4'd1;
        #20;
        a=4'd15;
        b=4'd15;
    end

    initial begin
        $monitor("a = %d, b = %d, s = %d, c_out = %d", a, b, s, c_out);
        #10;
    end
endmodule