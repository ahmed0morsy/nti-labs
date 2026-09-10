module TM_2#(parameter width=20, parameter addr_width=8)
(
input wire clk,
input wire rst_n,
input wire wr_en,
input wire rd_en,
input wire [width-1:0] din,
input wire [addr_width-1:0] addr,
output wire serial_out,
output wire valid1

);

wire [width-1:0] dout;
wire [width-1:0] parallel_in;
wire en;
wire valid;
assign en=valid;
assign parallel_in=dout;
p_to_s #( .width(20))ins3(.clk(clk),.rst_n(rst_n),.parallel_in(parallel_in),.en(en),.serial_out(serial_out),.valid1(valid1));
ram#( .w1(20), .w2(8)) ins4(.clk(clk),.rst_n(rst_n),.wr_en(wr_en),.rd_en(rd_en),.din(din),.addr(addr),.dout(dout),.valid(valid));

endmodule
