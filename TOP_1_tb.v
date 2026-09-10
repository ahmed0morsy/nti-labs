module TOP_1_tb#(parameter f_wi_tb=20,parameter s_wi_tb=8);

reg clk_tb;
reg rst_n_tb;
reg write_data_tb;
reg read_data_tb;

reg [f_wi_tb-1:0] data_in_tb;
reg [s_wi_tb-1:0] adrress_tb;
wire [s_wi_tb-1:0] data_out_tb;
wire a_is_zero_tb;

initial begin 

clk_tb=0;
forever 
begin #5
clk_tb=~clk_tb;
end
end
TOP_1#(.f_wi(20),.s_wi(8)) gg(.clk(clk_tb),.rst_n(rst_n_tb),.write_data(write_data_tb),.read_data(read_data_tb),.data_in(data_in_tb),.adrress(adrress_tb),.data_out(data_out_tb),.a_is_zero(a_is_zero_tb));
initial
begin

test_b2 (1'b0,1'b0,8'b00001000,1'b0,20'b11001011011010110011);

test_b2 (1'b1,1'b1,8'b00001000,1'b0,20'b11001011011010110011);

test_b2 (1'b1,1'b0,8'b00001000,1'b1,'b1);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);

test_b2 (1'b1,1'b0,8'b00001000,1'b0,'b0);


$stop;
end
task test_b2 (input rest,input write,input[s_wi_tb-1:0]adres,input read,input [f_wi_tb-1:0] dinput);
begin
rst_n_tb=rest;
write_data_tb=write;
adrress_tb=adres;
data_in_tb=dinput;
read_data_tb=read;

        @(posedge clk_tb);
$display("rst_n_tb=%b write_data_tb=%b adrress_tb=%b read_data_tb=%b data_in_tb=%b data_out_tb=%b a_is_zero_tb=%b ",rst_n_tb,write_data_tb,adrress_tb,read_data_tb,data_in_tb,data_out_tb,a_is_zero_tb);

end
endtask
endmodule
