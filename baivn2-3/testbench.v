`timescale 1ns/1ps
module simple_alu_tb;
    reg [7:0] a,b;
    reg c_in;
    reg [3:0] sel;
    wire [7:0] y;
    integer i;

    simple_alu uut(
        .a(a), .b(b), .c_in(c_in), .sel(sel), .y(y)
    );

    initial begin
        a=8'ha5;
        b=8'hf0;
        c_in=1'b1;
        $display("sel |  calculation  |  y(hex)"); //in ra bang so
        $display("--------------------------------");
        for(i=0;i<16;i=i+1) begin
            sel=i;
            #10;
            case(sel)
            4'b0000: $display("%b | y=a | %h", sel, y);
            4'b0001: $display("%b | y=a+1 | %h", sel, y);
            4'b0010: $display("%b | y=a-1 | %h", sel, y);
            4'b0011: $display("%b | y=b | %h", sel, y);
            4'b0100: $display("%b | y=b+1 | %h", sel, y);
            4'b0101: $display("%b | y=b-1 | %h", sel, y);
            4'b0110: $display("%b | y=a+b | %h", sel, y);
            4'b0111: $display("%b | y=a+b+c_in | %h", sel, y);
            4'b1000: $display("%b | y=~a | %h", sel, y);
            4'b1001: $display("%b | y=~b | %h", sel, y);
            4'b1010: $display("%b | y=a&b | %h", sel, y);
            4'b1011: $display("%b | y=a|b | %h", sel, y);
            4'b1100: $display("%b | y=~(a&b) | %h", sel, y);
            4'b1101: $display("%b | y=~(a|b) | %h", sel, y);
            4'b1110: $display("%b | y=a^b | %h", sel, y);
            4'b1111: $display("%b | y=~(a^b) | %h", sel, y);
            default: $display("%b | y=0 | %h", sel, y);
        endcase
    end
    $finish;
end
endmodule