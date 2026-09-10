module full_adder1(


input wire a,
input wire b,
input wire c,
output wire s1,
output wire c1
);
 assign s1=a^b^c;
 assign c1=(c&b)|(b&a)|(c&a);


endmodule
