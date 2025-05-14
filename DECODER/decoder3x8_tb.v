`include "decoder3x8.v"
module decoder3x8_tb();
    reg [2:0] in;        
    reg enable;         
    wire [7:0] out; 
decoder3x8 dut(in, enable, out);
initial begin
//$monitor("in=%b, enable=%b, out=%b", in, enable, out);
$dumpfile("decoder3x8_tb.vcd");
$dumpvars(0, decoder3x8_tb);

end 
initial begin
    enable=1; #10;  
    in = 3'b000; #10; $display("%b | %b", in, out);
        in = 3'b001; #10; $display("%b | %b", in, out);
        in = 3'b010; #10; $display("%b | %b", in, out);
        in = 3'b011; #10; $display("%b | %b", in, out);
        in = 3'b100; #10; $display("%b | %b", in, out);
        in = 3'b101; #10; $display("%b | %b", in, out);
        in = 3'b110; #10; $display("%b | %b", in, out);
        in = 3'b111; #10; $display("%b | %b", in, out);
end
endmodule