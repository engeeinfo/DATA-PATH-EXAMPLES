module cmp(input[15:0] bout,
output reg [15:0]eqz);
always@(*)
if(bout==0) eqz <= bout;
endmodule 
