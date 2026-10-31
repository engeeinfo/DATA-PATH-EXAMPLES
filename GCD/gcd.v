module gcd_unit (
    input wire clk,
    input wire reset,
    input wire start,
    input wire [15:0] a,
    input wire [15:0] b,
    output reg [15:0] result,
    output reg done
);
    reg [15:0] x;
    reg [15:0] y;
    reg busy;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            x <= 16'd0;
            y <= 16'd0;
            result <= 16'd0;
            done <= 1'b0;
            busy <= 1'b0;
        end else if (start && !busy) begin
            x <= a;
            y <= b;
            done <= 1'b0;
            busy <= 1'b1;
        end else if (busy) begin
            if (y == 16'd0) begin
                result <= x;
                done <= 1'b1;
                busy <= 1'b0;
            end else begin
                x <= y;
                y <= x % y;
            end
        end else begin
            done <= 1'b0;
        end
    end
endmodule
