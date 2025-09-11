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

    // Monitor để display tự động
    initial begin
        $monitor("Time: %0t | sel1=%b sel2=%b sel3=%b | out=%b", 
                 $time, sel1, sel2, sel3, out);
    end

    initial begin
        // Test case ban đầu: 3'b000
        {sel1, sel2, sel3} = 3'b000;
        #10;
        
        // Test case ngẫu nhiên 1
        {sel1, sel2, sel3} = 3'b001;
        #10;
        
        // Test case ngẫu nhiên 2
        {sel1, sel2, sel3} = 3'b010;
        #10;
        
        // Test case ngẫu nhiên 3
        {sel1, sel2, sel3} = 3'b011;
        #10;
        
        // Test case ngẫu nhiên 4
        {sel1, sel2, sel3} = 3'b100;
        #10;
        
        // Test case ngẫu nhiên 5
        {sel1, sel2, sel3} = 3'b101;
        #10;
        
        // Test case ngẫu nhiên 6
        {sel1, sel2, sel3} = 3'b110;
        #10;
        
        // Test case ngẫu nhiên 7
        {sel1, sel2, sel3} = 3'b111;
        #10;
        
        // Test case #20
        {sel1, sel2, sel3} = 3'b000;
        #20;
        
        $finish;
    end

endmodule
