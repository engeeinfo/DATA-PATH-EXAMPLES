//testbench
module gcdtb;
reg [15:0]data_in;
reg clk,start;
wire done;
 
reg [15:0]A,B;
gcddatapath DP(gt,lt,eq,lda,ldb,sel1,sel2,sel_in,data_in,clk);
cntr CON(gt,lt,eq,lda,ldb,sel1,sel2,sel_in,data_in,clk,start);

inital
begin
clk=1'b0;
#3 start =1'b1;
#1000 $finish;
end
 
always #5 clk=~clk;
initial
begin
#12 data_in=143;
#10 data_in=78;
end

initial
begin
$monitor($time,"%d %b",DP.Aout,done);
$dumpfile("gcd.vcd);$dumpvars(0, gcdtb);
end 
endmodule
© 2022 GitHub, Inc.
