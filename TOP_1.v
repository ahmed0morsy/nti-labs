module TOP_1#(parameter f_wi=20,parameter s_wi=8)
(
input wire clk,
input wire rst_n,
input wire write_data,
input wire read_data,
input wire [f_wi-1:0] data_in,
input wire [s_wi-1:0] adrress,
output wire [s_wi-1:0] data_out,
output wire a_is_zero

);
wire serial_out;
wire valid1;
wire serial_in;
wire shift_en;
assign shift_en=valid1;
assign serial_in=serial_out;

TM_2#(.width(20),.addr_width(8)) f_t(.clk(clk), .rst_n(rst_n),.wr_en(write_data),.rd_en(read_data),.din(data_in),.addr(adrress),.serial_out(serial_out),.valid1(valid1));

TM_1 #(.w1(8) ,.w2(20),.w3(3)) s_t(.clk(clk), .rst_n(rst_n),.shift_en(shift_en),.serial_in(serial_in),.alu_out(data_out),.a_is_zero(a_is_zero));

endmodule
