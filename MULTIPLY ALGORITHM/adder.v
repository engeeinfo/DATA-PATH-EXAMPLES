module adder(input[16:0] a,b,
output [15:0]out
);
always@(*)
out = a + b;
endmodule
