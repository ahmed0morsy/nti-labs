module light # (parameter w_out=20)
(
input wire clk,
input wire rst,
input wire hold,
output reg [w_out-1:0] regs_out
);

always@ (posedge clk)
begin
if (rst=='b0)
begin
regs_out<=20'b10000000000000000000;
end
else if (hold=='b0)
begin
regs_out<=regs_out;
 end
else
begin
regs_out<={regs_out[0], regs_out [w_out-1:1]};
end
end
endmodule
