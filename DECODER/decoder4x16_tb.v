`include "decoder4x16.v"
module decoder4x16_tb;
    reg [3:0] in;
    reg enable;
    wire [15:0] out;
decoder4x16 dut (.in(in),.enable(enable),  .out(out));
 integer i;
 initial begin
        $display("Enable | Input | Output");
        $display("-----------------------------");
        enable = 1'b1;
        for (i = 0; i < 16; i = i + 1) begin
            in = i[3:0];
            #5;
            $display("  %b    | %b  | %b", enable, in, out);
        end
        enable = 1'b0;
        in = 4'b1010; #5;
        $display("  %b    | %b  | %b (Enable Low)", enable, in, out);
        $finish;
    end
    initial begin
        $dumpfile("decoder4x16_tb.vcd");
        $dumpvars(0, decoder4x16_tb);
    end
endmodule
