module seq_mo_n_tb ;

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
seq_mo_n #(.w2(3))dut (.clk(clk_tb),.rst_n(rst_n_tb),.in(in_tb),.de(de_tb));
initial
begin
rst_n_tb=1'b0   ;  in_tb=1'b0 ; #10;

$display("rst_n_tb=%b in_tb=%b de_tb=%b",rst_n_tb,in_tb,de_tb);
rst_n_tb=1'b1   ;  in_tb=1'b1 ; #10;

$display("rst_n_tb=%b in_tb=%b de_tb=%b",rst_n_tb,in_tb,de_tb);
rst_n_tb=1'b1   ;  in_tb=1'b1 ; #10;

$display("rst_n_tb=%b in_tb=%b de_tb=%b",rst_n_tb,in_tb,de_tb);
rst_n_tb=1'b1   ;  in_tb=1'b0 ; #10;

$display("rst_n_tb=%b in_tb=%b de_tb=%b",rst_n_tb,in_tb,de_tb);
rst_n_tb=1'b1   ;  in_tb=1'b1 ; #10;

$display("rst_n_tb=%b in_tb=%b de_tb=%b",rst_n_tb,in_tb,de_tb);
rst_n_tb=1'b1   ;  in_tb=1'b0 ; #10;

$display("rst_n_tb=%b in_tb=%b de_tb=%b",rst_n_tb,in_tb,de_tb);
rst_n_tb=1'b1   ;  in_tb=1'b1 ; #10;

$display("rst_n_tb=%b in_tb=%b de_tb=%b",rst_n_tb,in_tb,de_tb);
rst_n_tb=1'b1   ;  in_tb=1'b0 ; #10;

$display("rst_n_tb=%b in_tb=%b de_tb=%b",rst_n_tb,in_tb,de_tb);
rst_n_tb=1'b1   ;  in_tb=1'b1 ; #10;

$display("rst_n_tb=%b in_tb=%b de_tb=%b",rst_n_tb,in_tb,de_tb);
$stop;
end
endmodule
