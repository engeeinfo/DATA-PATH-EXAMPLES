module bblk(input[15:0]din,
input lb,clk,deb,
output reg[15:0] dout);
always@(posedge clk)
if(lb) dout <= din;
else if(deb) dout <= dout-1;
endmodule
