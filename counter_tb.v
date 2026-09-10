module count_tb #(parameter w1=3);
reg clk_tb;
reg rst_n_tb;
reg en_tb;
wire [w1-1:0]count_tb;
wire [w1:0]bit_count_tb;
wire edge_trig_tb;

initial begin 

clk_tb=0;
forever 
begin #5
clk_tb=~clk_tb;
end
end

count#(.w(3)) dut(.clk(clk_tb),.rst_n(rst_n_tb),.count(count_tb),.en(en_tb),.bit_count(bit_count_tb),.edge_trig(edge_trig_tb));


initial
begin
test_b ('b0,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
test_b (1'b1,1'b1);
#10;
$stop;
end
task test_b (input rst_t,input en_t);
begin
rst_n_tb =rst_t;
en_tb =en_t;
$display("count_tb=%b bit_count_tb=%b edge_trig_tb=%b",count_tb,bit_count_tb,edge_trig_tb);
end
endtask
endmodule
