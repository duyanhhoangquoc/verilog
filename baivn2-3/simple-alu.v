module simple_alu (
    input [7:0] a,b,
    input c_in,
    input [3:0] sel,
    output reg [7:0] y
);

always @(*) begin
    case(sel)
        //khoi so hoc
        4'b0000: y=a;
        4'b0001: y=a+1;
        4'b0010: y=a-1;
        4'b0011: y=b;
        4'b0100: y=b+1;
        4'b0101: y=b-1;
        4'b0110: y=a+b;
        4'b0111: y=a+b+c_in; //
        //khoi logic
        4'b1000: y=~a;  //NOT a
        4'b1001: y=~b;  //NOT b
        4'b1010: y=a&b;  //AND a and b
        4'b1011: y=a|b;  //OR a and b
        4'b1100: y=~(a&b);  //NAND a and b
        4'b1101: y=~(a|b);  //NOR a and b
        4'b1110: y=a^b;  //XOR a and b
        4'b1111: y=~(a^b);  //XNOR a and b
        default: y=8'h00;
    endcase
end
endmodule
