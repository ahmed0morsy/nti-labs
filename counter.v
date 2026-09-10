module count #(parameter w=3)
(
    input wire clk,
    input wire rst_n,
    input wire en,

    output reg [w-1:0] count,
    output reg   edge_trig,
    output reg [3:0]bit_count
);


always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
    begin
        count     <= 3'b000;
        bit_count <= 4'b0000;
        edge_trig<=1'b0;
    end

    else if (en)
    count<=count+1;
         if (count==3'b111)begin
       bit_count<=bit_count+1; 
       edge_trig<=1'b1;
       end
else
edge_trig<=1'b0;
end
/*always@(*)begin
 if (count==3'b111)
edge_trig=1'b1;
else
edge_trig=1'b0;
end*/
endmodule
