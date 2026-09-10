module seq_meal_o_tb ;

reg in_tb;
reg clk_tb;
reg rst_n_tb;
wire de_tb;
initial begin 

clk_tb=0;
forever 
begin #5
clk_tb=~clk_tb;
end
end
seq_meal_o #(.w1(3))dut (.clk(clk_tb),.rst_n(rst_n_tb),.in(in_tb),.de(de_tb));
initial
begin

rst_n_tb = 1'b0;
in_tb = 1'b0;

#10;
rst_n_tb = 1'b1;

@(negedge clk_tb);
in_tb = 1'b1;

@(negedge clk_tb);
in_tb = 1'b1;

@(negedge clk_tb);
in_tb = 1'b0;

@(negedge clk_tb);
in_tb = 1'b1;

@(negedge clk_tb);
in_tb = 1'b0;

@(negedge clk_tb);
in_tb = 1'b1;

@(negedge clk_tb);
in_tb = 1'b0;

@(negedge clk_tb);
in_tb = 1'b1;

@(negedge clk_tb);
in_tb = 1'b1;

@(negedge clk_tb);
in_tb = 1'b0;

@(negedge clk_tb);
in_tb = 1'b1;

@(negedge clk_tb);
in_tb = 1'b0;

@(negedge clk_tb);
in_tb = 1'b1;
$stop;
end
endmodule
