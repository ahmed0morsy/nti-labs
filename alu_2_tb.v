module alu_2_tb#(parameter w3=8,
            parameter w4=3       );

 reg [w3-1:0] in_a_tb;
 reg [w3-1:0] in_b_tb;
 reg [w4-1:0] opcode_tb;
 reg alu_en_tb;
 wire [w3-1:0] alu_out_tb;
 wire a_is_zero_tb;



alu_2#(.width(8),.width2(3))dut 
(
.in_a(in_a_tb),
.in_b(in_b_tb),
.opcode(opcode_tb),
.alu_en(alu_en_tb),
.alu_out(alu_out_tb),
.a_is_zero(a_is_zero_tb)
);
initial
 begin
alu_en_tb='b0   ;  opcode_tb=3'b000  ;  in_a_tb=8'b00000000  ;  in_b_tb=8'b10000110 ;#10;

$display("alu_en_tb=%b in_a_tb=%b in_b_tb=%b opcode_tb=%b alu_out_tb=%b a_is_zero_tb=%b",alu_en_tb,in_a_tb,in_b_tb,opcode_tb,alu_out_tb,a_is_zero_tb);

alu_en_tb=1'b1  ;   opcode_tb=3'b000  ;  in_a_tb=8'b01000010  ;  in_b_tb=8'b10000110 ;#10;

$display("alu_en_tb=%b in_a_tb=%b in_b_tb=%b opcode_tb=%b alu_out_tb=%b a_is_zero_tb=%b",alu_en_tb,in_a_tb,in_b_tb,opcode_tb,alu_out_tb,a_is_zero_tb);

alu_en_tb=1'b1  ;  opcode_tb=3'b001  ;  in_a_tb=8'b01000010  ;  in_b_tb=8'b10000110 ;#10;

$display("alu_en_tb=%b in_a_tb=%b in_b_tb=%b opcode_tb=%b alu_out_tb=%b a_is_zero_tb=%b",alu_en_tb,in_a_tb,in_b_tb,opcode_tb,alu_out_tb,a_is_zero_tb);

alu_en_tb=1'b1  ;  opcode_tb=3'b010  ;  in_a_tb=8'b01000010  ;  in_b_tb=8'b10000110 ;#10;

$display("alu_en_tb=%b in_a_tb=%b in_b_tb=%b opcode_tb=%b alu_out_tb=%b a_is_zero_tb=%b",alu_en_tb,in_a_tb,in_b_tb,opcode_tb,alu_out_tb,a_is_zero_tb);

alu_en_tb=1'b1  ;  opcode_tb=3'b011  ;  in_a_tb=8'b01000010  ;  in_b_tb=8'b10000110 ;#10;

$display("alu_en_tb=%b in_a_tb=%b in_b_tb=%b opcode_tb=%b alu_out_tb=%b a_is_zero_tb=%b",alu_en_tb,in_a_tb,in_b_tb,opcode_tb,alu_out_tb,a_is_zero_tb);

alu_en_tb=1'b1  ;  opcode_tb=3'b100  ;  in_a_tb=8'b01000010  ;  in_b_tb=8'b10000110 ;#10;

$display("alu_en_tb=%b in_a_tb=%b in_b_tb=%b opcode_tb=%b alu_out_tb=%b a_is_zero_tb=%b",alu_en_tb,in_a_tb,in_b_tb,opcode_tb,alu_out_tb,a_is_zero_tb);

alu_en_tb=1'b1  ;  opcode_tb=3'b101  ;  in_a_tb=8'b00000000  ;  in_b_tb=8'b10000110 ;#10;

$display("alu_en_tb=%b in_a_tb=%b in_b_tb=%b opcode_tb=%b alu_out_tb=%b a_is_zero_tb=%b",alu_en_tb,in_a_tb,in_b_tb,opcode_tb,alu_out_tb,a_is_zero_tb);

alu_en_tb=1'b1  ;   opcode_tb=3'b110  ;  in_a_tb=8'b01000010  ;  in_b_tb=8'b10000110 ;#10;

$display("alu_en_tb=%b in_a_tb=%b in_b_tb=%b opcode_tb=%b alu_out_tb=%b a_is_zero_tb=%b",alu_en_tb,in_a_tb,in_b_tb,opcode_tb,alu_out_tb,a_is_zero_tb);

alu_en_tb=1'b1  ;    opcode_tb=3'b111  ;  in_a_tb=8'b01000010  ;  in_b_tb=8'b10000110 ;#10;

$display("alu_en_tb=%b in_a_tb=%b in_b_tb=%b opcode_tb=%b alu_out_tb=%b a_is_zero_tb=%b",alu_en_tb,in_a_tb,in_b_tb,opcode_tb,alu_out_tb,a_is_zero_tb);

$display("gooood");
$stop;
end

endmodule
