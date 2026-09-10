module full_adder1_tb();


 reg  a_tb;
 reg  b_tb;
 reg  c_tb;
 wire s1_tb;
 wire c1_tb;
full_adder1 dut( 
 .a(a_tb),
 .b(b_tb),
 .c(c_tb),
 .s1(s1_tb),
 .c1(c1_tb)
);
initial 
begin
a_tb=0    ;b_tb=0    ;c_tb=0    ;#10;
a_tb=0    ;b_tb=0    ;c_tb=1    ;#10;
a_tb=0    ;b_tb=1    ;c_tb=0    ;#10;
a_tb=0    ;b_tb=1    ;c_tb=1    ;#10;
a_tb=1    ;b_tb=0    ;c_tb=0    ;#10;
a_tb=1    ;b_tb=0    ;c_tb=1    ;#10;
a_tb=1    ;b_tb=1    ;c_tb=0    ;#10;
a_tb=1    ;b_tb=1    ;c_tb=1    ;#10;
 $stop;
end
endmodule
