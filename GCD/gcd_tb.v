`timescale 1ns / 1ps

module gcd_tb;
    reg clk;
    reg reset;
    reg start;
    reg [15:0] a;
    reg [15:0] b;
    wire [15:0] result;
    wire done;

    gcd_unit uut (
        .clk(clk), .reset(reset), .start(start),
        .a(a), .b(b), .result(result), .done(done)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    task automatic check_gcd(input [15:0] lhs, input [15:0] rhs,
                             input [15:0] expected);
        begin
            @(negedge clk);
            a = lhs;
            b = rhs;
            start = 1'b1;
            @(negedge clk);
            start = 1'b0;
            wait (done);
            if (result !== expected) begin
                $display("FAIL: gcd(%0d, %0d) = %0d, expected %0d",
                         lhs, rhs, result, expected);
                $finish(1);
            end
        end
    endtask

    initial begin
        reset = 1'b1;
        start = 1'b0;
        a = 0;
        b = 0;
        #12;
        reset = 1'b0;
        check_gcd(143, 78, 13);
        check_gcd(48, 18, 6);
        check_gcd(17, 0, 17);
        $display("PASS: GCD datapath regression");
        $finish(0);
    end
endmodule
