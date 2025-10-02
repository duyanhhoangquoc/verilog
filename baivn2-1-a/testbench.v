`timescale 1ns/1ps
module comp_8bit_parallel_tb;
    reg [7:0] a,b;
    wire a_gt_b, a_eq_b, a_lt_b;

comp_8bit_parallel uut(
    .a(a), .b(b), .a_gt_b(a_gt_b), .a_eq_b(a_eq_b), .a_lt_b(a_lt_b)
);

initial begin 
    $display("Time | a | b | a>b | a=b | a<b");
    $monitor("%3t ns | %3d | %3d | %b | %b | %b", $time, a, b, a_gt_b, a_eq_b, a_lt_b);

    //gia tri thong thuong
    a=100;b=50;#10;
    a=25;b=75;#10;
    a=150;b=150;#10;
    //gia tri nguong
    a=255;b=0;#10;
    a=0;b=255;#10;
    a=0;b=0;#10;

    $finish;
end

endmodule