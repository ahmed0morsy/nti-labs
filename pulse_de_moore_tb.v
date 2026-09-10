module pulse_d_more_tb;

reg clk_tb;
reg rst_n_tb;
reg in_tb;
wire out_tb;

initial begin 

clk_tb=0;
forever 
begin #5
clk_tb=~clk_tb;
end
end

pulse_d_more dut(.clk(clk_tb),.rst_n(rst_n_tb),.in(in_tb),.out(out_tb));
initial 
begin
rst_n_tb=1'b0   ;  in_tb=1'b0 ; #13;

$display("rst_n_tb=%b in_tb=%b out_tb=%b",rst_n_tb,in_tb,out_tb);
rst_n_tb=1'b1   ;  in_tb=1'b0 ; #10;

$display("rst_n_tb=%b in_tb=%b out_tb=%b",rst_n_tb,in_tb,out_tb);
rst_n_tb=1'b1   ;  in_tb=1'b0 ; #10;

$display("rst_n_tb=%b in_tb=%b out_tb=%b",rst_n_tb,in_tb,out_tb);
rst_n_tb=1'b1   ;  in_tb=1'b1 ; #60;

$display("rst_n_tb=%b in_tb=%b out_tb=%b",rst_n_tb,in_tb,out_tb);
rst_n_tb=1'b1   ;  in_tb=1'b0 ; #10;

$display("rst_n_tb=%b in_tb=%b out_tb=%b",rst_n_tb,in_tb,out_tb);
rst_n_tb=1'b1   ;  in_tb=1'b1 ; #12;

$display("rst_n_tb=%b in_tb=%b out_tb=%b",rst_n_tb,in_tb,out_tb);
rst_n_tb=1'b1   ;  in_tb=1'b0 ; #10;

$display("rst_n_tb=%b in_tb=%b out_tb=%b",rst_n_tb,in_tb,out_tb);
$stop;
end
endmodule
