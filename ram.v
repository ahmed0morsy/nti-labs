module ram#( parameter w1=20, parameter w2=8)
(
input wire clk,
input wire rst_n,
input wire wr_en,
input wire rd_en,
input wire [w1-1:0] din,
input wire [w2-1:0] addr,
output reg[w1-1:0] dout,
output reg valid
);
reg [w1-1:0] mem[0:255];
 always@(posedge clk,negedge rst_n)begin
if(rst_n==0)
begin
dout<='b0;
valid<=1'b0;
end
else
 begin
if (wr_en==1'b1)begin
mem[addr]<=din;
end
if (rd_en==1'b1)begin
dout<=mem[addr];
valid<=1'b1;
end
else begin
valid<=1'b0;
end
end
end

endmodule
