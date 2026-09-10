module ram_tb#( parameter w3=20, parameter w4=8);

reg clk_tb;
reg rst_n_tb;
reg wr_en_tb;
reg rd_en_tb;
reg [w3-1:0] din_tb;
reg [w4-1:0] addr_tb;
wire[w3-1:0] dout_tb;
wire valid;

initial begin 

clk_tb=0;
forever 
begin #5
clk_tb=~clk_tb;
end
end

ram#( .w1(20),.w2(8))dut (.clk(clk_tb),.rst_n(rst_n_tb),.wr_en(wr_en_tb),.rd_en(rd_en_tb),.din(din_tb),.addr(addr_tb),.dout(dout_tb),.valid(valid));

initial
begin

rst_n_tb=1'b0; wr_en_tb=1'b0;rd_en_tb=1'b0;din_tb=20'b11010110001011001010;addr_tb=8'b00001000;#10;

$display("rst_n_tb=%b wr_en_tb=%b rd_en_tb=%b din_tb=%b addr_tb=%b dout_tb=%b valid=%b",rst_n_tb,wr_en_tb,rd_en_tb,din_tb,addr_tb,dout_tb,valid);


rst_n_tb=1'b1; wr_en_tb=1'b1;rd_en_tb=1'b0;din_tb=20'b11010110001011001010;addr_tb=8'b00001000;#10;

$display("rst_n_tb=%b wr_en_tb=%b rd_en_tb=%b din_tb=%b addr_tb=%b dout_tb=%b valid=%b",rst_n_tb,wr_en_tb,rd_en_tb,din_tb,addr_tb,dout_tb,valid);


rst_n_tb=1'b1; wr_en_tb=1'b0;rd_en_tb=1'b1;din_tb=20'b11111111111111111111;addr_tb=8'b00001000;#10;

$display("rst_n_tb=%b wr_en_tb=%b rd_en_tb=%b din_tb=%b addr_tb=%b dout_tb=%b valid=%b",rst_n_tb,wr_en_tb,rd_en_tb,din_tb,addr_tb,dout_tb,valid);


rst_n_tb=1'b1; wr_en_tb=1'b0;rd_en_tb=1'b0;din_tb=20'b00000000000000000000;addr_tb=8'b00001000;#10;

$display("rst_n_tb=%b wr_en_tb=%b rd_en_tb=%b din_tb=%b addr_tb=%b dout_tb=%b valid=%b",rst_n_tb,wr_en_tb,rd_en_tb,din_tb,addr_tb,dout_tb,valid);


rst_n_tb=1'b1; wr_en_tb=1'b0;rd_en_tb=1'b0;din_tb=20'b11111111111111111111;addr_tb=8'b00001000;#10;

$display("rst_n_tb=%b wr_en_tb=%b rd_en_tb=%b din_tb=%b addr_tb=%b dout_tb=%b valid=%b",rst_n_tb,wr_en_tb,rd_en_tb,din_tb,addr_tb,dout_tb,valid);


rst_n_tb=1'b1; wr_en_tb=1'b0;rd_en_tb=1'b0;din_tb=20'b11111111111111111111;addr_tb=8'b00001000;#10;

$display("rst_n_tb=%b wr_en_tb=%b rd_en_tb=%b din_tb=%b addr_tb=%b dout_tb=%b valid=%b",rst_n_tb,wr_en_tb,rd_en_tb,din_tb,addr_tb,dout_tb,valid);


rst_n_tb=1'b1; wr_en_tb=1'b0;rd_en_tb=1'b0;din_tb=20'b11111111111111111111;addr_tb=8'b00001000;#10;

$display("rst_n_tb=%b wr_en_tb=%b rd_en_tb=%b din_tb=%b addr_tb=%b dout_tb=%b valid=%b",rst_n_tb,wr_en_tb,rd_en_tb,din_tb,addr_tb,dout_tb,valid);





$stop;
end
endmodule
