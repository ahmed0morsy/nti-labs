module par_check #(parameter width = 8)
(
   
    input wire par_typ,
    input wire par_en,
    input wire[width-1:0] data_in,
    input wire par_bit,

    output wire par_err
);
    wire calc_par;

    assign calc_par= par_typ ? ~(^data_in) : (^data_in);
 
    assign par_err = par_en && (calc_par != par_bit);

endmodule
