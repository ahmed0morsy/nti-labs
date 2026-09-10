module tm_3_tb#(parameter www1=4,parameter www2=7);

reg [www1-1:0] gray;
wire [www2-1:0] seven;
tm_3#(.ww1(4),.ww2(7))dut (.gray(gray),.seven(seven));
initial
begin
test_b (4'b0000);
#10;
test_b (4'b1000);
#10;
test_b (4'b0001);
#10;
test_b (4'b0100);
#10;
test_b (4'b0110);
#10;
$stop;
end
task test_b (input [www1-1:0]gray_t);
begin
gray=gray_t;
#1;
$display("seven=%b",seven);
end
endtask
endmodule
