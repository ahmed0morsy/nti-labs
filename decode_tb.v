module decode_tb #( parameter a1=3, parameter a2=8);

 reg [a1-1:0] in_tb;
 wire  [a2-1:0] out_tb;

 decode #( .w1(3), .w2(8))dut
( 


.in(in_tb),
.out(out_tb)


);
initial 
begin
in_tb=3'b000;#10;

$display("in_tb=%b out_tb=%b",in_tb,out_tb);

in_tb=3'b001;#10;

$display("in_tb=%b out_tb=%b",in_tb,out_tb);

in_tb=3'b010;#10;

$display("in_tb=%b out_tb=%b",in_tb,out_tb);

in_tb=3'b011;#10;

$display("in_tb=%b out_tb=%b",in_tb,out_tb);

in_tb=3'b100;#10;

$display("in_tb=%b out_tb=%b",in_tb,out_tb);

in_tb=3'b101;#10;

$display("in_tb=%b out_tb=%b",in_tb,out_tb);

in_tb=3'b110;#10;

$display("in_tb=%b out_tb=%b",in_tb,out_tb);

in_tb=3'b111;#10;

$display("in_tb=%b out_tb=%b",in_tb,out_tb);

$display ("niiiice");

$stop;
end

endmodule
