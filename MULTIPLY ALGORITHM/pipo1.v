module pipo1(input[15:0] datain,
input ld,clk,
output reg[15:0] dout
);
always@(posedge clk)
if(ld) dout <= datain;
endmodule

