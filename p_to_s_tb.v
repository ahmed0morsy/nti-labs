module p_to_s_tb #(parameter width1=20);

reg clk_tb;
reg rst_n_tb;
reg [width1-1:0] parallel_in_tb;
reg en_tb;
wire serial_out_tb;

wire ser_done_p_tb;

initial begin 

clk_tb=0;
forever 
begin #5
clk_tb=~clk_tb;
end
end

p_to_s #(.width(20))dut(.clk(clk_tb),.rst_n(rst_n_tb),.parallel_in(parallel_in_tb),.en(en_tb),.serial_out(serial_out_tb),.ser_done_p(ser_done_p_tb));

initial
begin
rst_n_tb=1'b0;   en_tb=1'b0; parallel_in_tb=20'b11001010101011101101;#10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b1; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);

rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);
rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);
rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);
rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);
rst_n_tb=1'b1;   en_tb=1'b0; #10;

$display("rst_n_tb=%b en_tb=%b parallel_in_tb=%b serial_out_tb=%b  ser_done_p_tb=%b",rst_n_tb,en_tb,parallel_in_tb,serial_out_tb,ser_done_p_tb);
$stop;
end
endmodule
