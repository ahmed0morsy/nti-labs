module TM_1 #(parameter w1=8 ,parameter w2=20,parameter w3=3
)
(
input wire clk,
input wire rst_n,
input wire shift_en,
input wire serial_in,
output wire [w1-1:0] alu_out,
output wire a_is_zero
);
wire [w1-1:0]in_a;
wire [w1-1:0]in_b;
wire [w2-1:0]parallel_out;
wire [w3-1:0]opcode;
wire alu_en;
assign alu_en=parallel_out[19];
assign opcode= parallel_out[18:16];
assign in_a=parallel_out[15:8];
assign in_b=parallel_out[7:0];

s_to_p #(.m1(20)) ins1 ( .clk(clk), .rst_n(rst_n), .shift_en(shift_en), .serial_in(serial_in), .parallel_out(parallel_out));
alu_2  #(.width(8),.width2(3)) ins2 ( .in_a(in_a), .in_b(in_b), .opcode(opcode), .alu_en(alu_en), .alu_out(alu_out), .a_is_zero(a_is_zero));

endmodule

