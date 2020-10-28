`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/28 10:15:32
// Design Name: 
// Module Name: ds_tb
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


module ds_tb(

    );

    reg clk_in1_0,reset_0;
    wire clk_out1_0,clk_out2_0,clk_out3_0,clk_out4_0,clk_out5_0,clk_out6_0,clk_out7_0;

    initial 
    begin
        clk_in1_0 = 0;
        reset_0 = 1;
        #10 reset_0 = 0;
    end

    always 
    begin
        #10 clk_in1_0 =~ clk_in1_0;
    end

    design_1_wrapper uut(
        .clk_in1_0(clk_in1_0),
        .clk_out1_0(clk_out1_0),
        .clk_out2_0(clk_out2_0),
        .clk_out3_0(clk_out3_0),
        .clk_out4_0(clk_out4_0),
        .clk_out5_0(clk_out5_0),
        .clk_out6_0(clk_out6_0),
        .clk_out7_0(clk_out7_0),
        .reset_0(reset_0));


endmodule
