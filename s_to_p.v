module s_to_p#(parameter m1=8)
(

input wire clk,
input wire serial_in,
input wire rst_n,
input wire shift_en,
input wire edge_trig,//from counter
input wire [3:0]bit_count,//from counter
output reg[m1-1:0] parallel_out


);
always@(posedge clk,negedge rst_n)
 begin
if (rst_n==0)
parallel_out<='b0;
else if(shift_en==1&&edge_trig&&bit_count<4'b1001)
parallel_out <= {serial_in, parallel_out[m1-1:1]};
end 

endmodule
