// mealy_case
module pulse_d_more
(
input wire clk,
input wire rst_n,
input wire in,
output reg out
);
parameter s0=2'b00;
parameter s1=2'b01;
//parameter s2=2'b10;
reg [1:0] cs , ns;
wire bb;
//initial_state
always @(posedge clk,negedge rst_n)
begin
if(rst_n==0)
cs<=2'b00;
else
cs<=ns;
end
//next_state
always@(*)
case(cs)
s0:begin
if(in)
ns=s1;
else
ns=s0;
end
s1:begin
if(in)
ns=s1;
else
ns=s0;
end
default:ns=s0;
endcase
//output

assign bb=in;
always@(*)
begin
if(cs==s1)
out=1'b0;
else
out=bb;
end


endmodule
