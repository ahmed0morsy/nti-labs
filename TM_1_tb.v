module TM_1_tb #(parameter w1=8 ,parameter w2=20,parameter w3=3
);

reg clk_tb;
reg rst_n_tb;
reg shift_en_tb;
reg serial_in_tb;
wire [w1-1:0] alu_out_tb;
wire a_is_zero_tb;

initial begin 

clk_tb=0;
forever 
begin #5
clk_tb=~clk_tb;

end
end
TM_1 #(.w1(8) ,.w2(20),.w3(3))dut (.clk(clk_tb),.rst_n(rst_n_tb),.shift_en(shift_en_tb),.serial_in(serial_in_tb),.alu_out(alu_out_tb),.a_is_zero(a_is_zero_tb));
initial
begin 
serial_in_tb=1'b1 ; rst_n_tb=1'b0  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b0 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b0 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b0 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b0 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b0 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b0 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b0 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b0 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b1 ; rst_n_tb=1'b1  ;shift_en_tb=1'b1;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);

serial_in_tb=1'b0 ; rst_n_tb=1'b1  ;shift_en_tb=1'b0;#10;

$display("serial_in_tb=%b rst_n_tb=%b shift_en_tb=%b alu_out_tb=%b a_is_zero_tb=%b",serial_in_tb,rst_n_tb,shift_en_tb,alu_out_tb,a_is_zero_tb);


$stop;
end

endmodule

