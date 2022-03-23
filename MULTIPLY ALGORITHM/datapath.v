module datapath(lda,ldb,ldp,clrp,decb,datain,clk,eqz);
input lda,ldb,ldp,clrp,decb,clk;
input[15:0] datain;
output eqz;
wire[15:0] x,y,z,bus,bout;
pipo1 a(lda,bus,clk,x);
pipo2 p(clk,ldp,z,clrp,y);
adder ad(x,y,z);
bblk b(bus,ldb,decb,bout,clk);
cmp cm(bout,eqz);
endmodule

