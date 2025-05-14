`include "decoder2x4.v"
module decoder2x4_tb();
reg [1:0]a;
reg en;
wire [3:0]y;
decoder2x4 dut(a, en, y);
initial begin
$monitor("a=%b, en=%b, y=%b", a,en,y);
$dumpfile("decoder2x4_tb.vcd");
$dumpvars(0, decoder2x4_tb);
en=1;a=2'b00;
#10; a=2'b01;
#10; a=2'b10;
#10; a=2'b11;

end
endmodule