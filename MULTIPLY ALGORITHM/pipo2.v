module pipo2(input[15:0] datain,
input ld,clr,clk,
output reg[15:0] dout
);
always@(posedge clk)
if(clr) dout <=16'b0;
else if(ld) dout <= datain;
endmodule

