`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/25 20:00:28
// Design Name: 
// Module Name: OV5640_Sensor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module OV5640_Sensor(
    input clk_i,

	input		cmos_vsync_i,	//cmos vsync
	input		cmos_href_i,	//cmos hsync refrence
	input		cmos_pclk_i,	//cmos pxiel clock
	output		cmos_xclk_o,	//cmos externl clock
	input [7:0] cmos_data_i,	//cmos data
	output      hs_o,           //hs signal.
    output      vs_o,           //vs signal.
   // output de_o,//data enable.
    output [23:0] rgb_o,        //data output,
    output      vid_clk_ce
    );

    wire [15:0] rgb_o_r;

    assign rgb_o = {rgb_o_r[15:11],3'd0,rgb_o_r[10:5],2'd0,rgb_o_r[4:0],3'd0};
    reg [7:0] cmos_data_r;
    reg cmos_href_r;
    reg cmos_vsync_r;

    always @(posedge cmos_pclk_i)
    begin
        cmos_data_r <= cmos_data_i;
        cmos_href_r <= cmos_href_i;
        cmos_vsync_r <= cmos_vsync_i;
    end 

    cmos_decoder cmos_decoder_u0(
	    //system signal.
        .cmos_clk_i(clk_i),//cmos senseor clock.
        .rst_n_i(RESETn_i2c),//system reset.active low.
        //cmos sensor hardware interface.
	    .cmos_pclk_i(cmos_pclk_i),  //(cmos_pclk),//input pixel clock.
	    .cmos_href_i(cmos_href_r),  //(cmos_href),//input pixel hs signal.
        .cmos_vsync_i(cmos_vsync_r),//(cmos_vsync),//input pixel vs signal.
	    .cmos_data_i(cmos_data_r),  //(cmos_data),//data.
	    .cmos_xclk_o(cmos_xclk_o),  //(cmos_xclk),//output clock to cmos sensor.
	    //user interface.
        .hs_o(hs_o),//hs signal.
        .vs_o(vs_o),//vs signal.
        //.de_o(de_o),//data enable.
        .rgb565_o(rgb_o_r),//data output
        .vid_clk_ce(vid_clk_ce)
    );
    
    counter_reset#(
        .NUM(20'hffff0)
    )(
        .clk_i(clk_i),
        .rst_n_o(RESETn_i2c)
    ); 

endmodule
