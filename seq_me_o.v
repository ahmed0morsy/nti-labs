module seq_meal_o #(parameter w1=3)
(

input wire in,
input wire clk,
input wire rst_n,
output reg de
);
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
parameter s5=3'b101;

reg[w1-1:0] cs,ns;

//state logic
always@(posedge clk,negedge rst_n)
begin
if(rst_n==0)
begin
cs<=s0;
de<=1'b0;
end
else
cs<=ns;
end
//next state
always @(*)
begin
case(cs)
s0:begin
if(in==0)
ns=s0;
else
ns=s1;
end
s1:begin
if(in==0)
ns=s0;
else
ns=s2;
end
s2:begin
if(in==0)
ns=s3;
else
ns=s2;
end
s3:begin
if(in==0)
ns=s0;
else
ns=s4;
end
s4:begin
if(in==0)
ns=s5;
else
ns=s2;
end
s5:begin
if(in==0)
ns=s0;
else
ns=s2;
end
default:ns=s0;
endcase
end
//output
always@(*)
begin
if(cs==s5&&in==1'b1)
de=1'b1;
else
de=1'b0;
end
endmodule
