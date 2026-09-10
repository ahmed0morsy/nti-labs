module tm_3#(parameter ww1=4,parameter ww2=7)
(
input wire [ww1-1:0] gray,
output wire [ww2-1:0] seven
);
wire [ww1-1:0] out_g;
wire[ww1-1:0] in_seven;
assign in_seven=out_g;
g_to_b #(.w(4)) ins5(.gray(gray),.binary(out_g));
b_to_7 #(.w1(4),.w2(7)) ins6(.binary(in_seven),.seven(seven));
endmodule
