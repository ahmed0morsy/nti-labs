module b_to_7_tb #(parameter w1=4,parameter w2=7);

reg [w1-1:0] binary;
 wire [w2-1:0] seven;
b_to_7 #(.w1(4),.w2(7)) dut (.binary(binary),.seven(seven));
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
task test_b (input [w1-1:0]binary_t);
begin
binary=binary_t;
#1;
$display("seven=%b",seven);
end
endtask
endmodule