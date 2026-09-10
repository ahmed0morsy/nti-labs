module full_adder(


input wire a,
input wire b,
input wire c,
output wire s1,
output wire c1
);
wire x,y,z;
and(x,c,b);
and(y,b,a);
and(z,c,a);
or(c1,x,y,z);
xor(s1,a,b,c);

endmodule
