`timescale 1ns / 1ps

//1) _i PIN input  
//2) _o PIN output
//3) _n PIN active low
//4) _dg debug signal 
//5) _r  reg delay
//6) _s state machine

module counter_reset#(
    parameter [19:0] NUM = 20'hffff0
)(
    input clk_i,
    output rst_n_o
);

reg [19:0] cnt_r = 20'd0;
reg rst_r;

/*
** count for clk
*/
always @(posedge clk_i)
begin
    cnt_r <= ( cnt_r <= NUM ) ? ( cnt_r + 20'd1 ) : NUM; 
end


/*
** generate output signal
*/
always @(posedge clk_i)
begin
    rst_r <= (cnt_r >= NUM) ? 1'b1 : 1'b0;
end

assign rst_n_o = rst_r;

endmodule