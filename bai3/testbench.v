`timescale 1ns/1ps

module testbench;

    reg sel1, sel2, sel3;
    wire [7:0] out;

    // Device Under Test
    encode3to8 dut (
        .sel1(sel1),
        .sel2(sel2),
        .sel3(sel3),
        .out(out)
    );

    integer i;

    initial begin
        $display("sel1 sel2 sel3 | out");
        for (i = 0; i < 8; i = i + 1) begin
            {sel1, sel2, sel3} = i[2:0];
            #5;
            $display("  %b    %b    %b  | %b", sel1, sel2, sel3, out);
        end
        $finish;
    end

endmodule
