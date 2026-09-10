module alu_2#(parameter width=8,
            parameter width2=3       )
(
input wire [width-1:0] in_a,
input wire [width-1:0] in_b,
input wire [width2-1:0] opcode,
input wire alu_en,
output reg [width-1:0] alu_out,
output reg a_is_zero

);

always @(*) begin

if (alu_en=='b0)
alu_out= 'b0;
else
 case(opcode)
   3'b000: alu_out=in_a+in_b;
   3'b001: alu_out=in_a-in_b;
   3'b010: alu_out=in_a&in_b;
   3'b011: alu_out=in_a^in_b;
   3'b100: alu_out=in_a|in_b;
   3'b101: alu_out=in_a;
   default : alu_out= 'b0;
endcase
 if(in_a=='b0)
   
  a_is_zero=1'b1;
 else
 a_is_zero=1'b0;

end
endmodule
