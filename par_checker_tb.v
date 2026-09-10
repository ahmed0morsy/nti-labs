module par_check_tb #(parameter width = 8, parameter width2 = 3);

    reg clk_tb;
    reg rst_n_tb;
    reg par_typ_tb;
    reg par_en_tb;
    reg data_in_tb;
    reg par_bit_tb;

    wire par_err_tb;

initial begin 

clk_tb=0;
forever 
begin #5
clk_tb=~clk_tb;
end
end

par_check #(.width (8),.width2 (3)) dut (.clk(clk_tb),.rst_n(rst_n_tb),.par_typ(par_typ_tb),.par_en(par_en_tb),.data_in(data_in_tb),.par_bit(par_bit_tb),.par_err(par_err_tb));
initial
begin
    test_b(1'b0, 1'b0, 1'b0,1'b0,1'b0);

    test_b(1'b1, 1'b1, 1'b1,1'b0,1'b1);
    test_b(1'b1, 1'b1, 1'b0,1'b0,1'b1);
    test_b(1'b1, 1'b1, 1'b1,1'b0,1'b1);
    test_b(1'b1, 1'b1, 1'b1,1'b0,1'b1);
    test_b(1'b1, 1'b1, 1'b0,1'b0,1'b1);
    test_b(1'b1, 1'b1, 1'b1,1'b0,1'b1);
    test_b(1'b1, 1'b1, 1'b0,1'b0,1'b1);
    test_b(1'b1, 1'b1, 1'b1,1'b1,1'b1);

$stop;
end
task test_b(input rst_n_t,input par_en_t,input data_in_t,input par_typ_t,input par_bit_t);

begin

    rst_n_tb = rst_n_t;
    par_en_tb = par_en_t;
    data_in_tb = data_in_t;
    par_typ_tb=par_typ_t;
    par_bit_tb=par_bit_t;

#10;

    $display("time=%0t  data_in_tb=%b  store=%b paraty_sto=%b par_bit_tb=%b par_err_tb=%b",
             $time,
             data_in_tb,
             dut.store,
             dut.paraty_sto,
             par_bit_tb,
             par_err_tb);

end
endtask
endmodule