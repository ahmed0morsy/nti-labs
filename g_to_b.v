module g_to_b #(parameter w=4)
(
input wire [w-1:0] gray,
output wire[w-1:0] binary
);
reg [w-1:0] store;
integer i;
always@(*)
begin
store[3]=gray[3];
for(i=2;i>=0;i=i-1)
begin
store[i]=gray[i]^store[i+1];
end

end
assign binary=store;
endmodule
