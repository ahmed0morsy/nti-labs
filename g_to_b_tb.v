module g_to_b_tb #(parameter w=4);

reg [w-1:0] gray;
wire[w-1:0] binary;

g_to_b #(.w(4))dut (.gray(gray),.binary(binary));
initial
begin
test_b (4'b0111);
#10;
test_b (4'b0110);
#10;
test_b (4'b0000);
#10;
test_b (4'b1010);
#10;
test_b (4'b0011);
#10;
$stop;
end
task test_b (input [w-1:0]gray_t);
begin
gray=gray_t;
#1;
$display("binary=%b",binary);
end
endtask
endmodule
