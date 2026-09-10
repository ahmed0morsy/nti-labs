module TM_2_tb#(parameter width5=20, parameter addr_width1=8);

reg clk_tb;
reg rst_n_tb;
reg wr_en_tb;
reg rd_en_tb;
reg [width5-1:0] din_tb;
reg [addr_width1-1:0] addr_tb;
 wire serial_out_tb;
 wire valid1_tb;

initial begin 

clk_tb=0;
forever 
begin #5
clk_tb=~clk_tb;
end
end


TM_2#(.width(20), .addr_width(8)) dut(.clk(clk_tb),.rst_n(rst_n_tb),.wr_en(wr_en_tb),.rd_en(rd_en_tb),.din(din_tb),.addr(addr_tb),.serial_out(serial_out_tb),.valid1(valid1_tb));
initial
begin
test_b (1'b0,1'b0,8'b00001000,1'b0,20'b11010110001011001010);

test_b (1'b1,1'b1,8'b00001000,1'b0,20'b11010110001011001010);

test_b (1'b1,1'b0,8'b00001000,1'b1,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b (1'b1,1'b0,8'b00001000,1'b0,'b0);
end
task test_b (input rest,input write,input[addr_width1-1:0]adres,input read,input [width5-1:0] dinput);
begin
rst_n_tb=rest;
wr_en_tb=write;
addr_tb=adres;
din_tb=dinput;
rd_en_tb=read;

        @(posedge clk_tb);#1;
$display("rst_n_tb=%b wr_en_tb=%b addr_tb=%b rd_en_tb=%b din_tb=%b serial_out_tb=%b valid1_tb=%b",rst_n_tb,wr_en_tb,addr_tb,rd_en_tb,din_tb,serial_out_tb,valid1_tb);

end
endtask
endmodule
