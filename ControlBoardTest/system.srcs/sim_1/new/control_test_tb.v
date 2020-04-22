`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/22 14:11:25
// Design Name: 
// Module Name: control_test_tb
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


module control_test_tb;

    //input
    reg clk_i;
    reg rst_n;
    reg [6:0] key_i_n;  //= {key_up_i_n, key_down_i_n, key_left_i_n, key_right_i_n, key_mode_i_n, key0_i_n, key1_i_n};
    reg [3:0] switchkey_i_n;
    //output
    wire beep_o;
    wire [1:0] led_o;

    control_test uut(
        .clk_i(clk_i),
        .rst_n(rst_n),
        .key_i_n(key_i_n),
        .switchkey_i_n(switchkey_i_n),
        .beep_o(beep_o),
        .led_o(led_o)
    );

    initial
    begin
        clk_i = 0;
        rst_n = 0;

        #100;
        rst_n = 1;
    end

    initial
    begin
        key_i_n = 7'b1111110;
        #500000000; //500ms ?
        key_i_n = 7'b1111111;
        #500000000; 

        key_i_n = 7'b1111101;
        #500000000; //500ms ?
        key_i_n = 7'b1111111;
        #500000000; 

        key_i_n = 7'b1111011;
        #500000000; //500ms ?
        key_i_n = 7'b1111111;
        #500000000;

        key_i_n = 7'b1110111;
        #500000000; //500ms ?
        key_i_n = 7'b1111111;
        #500000000; 

        key_i_n = 7'b1101111;
        #500000000; //500ms ?
        key_i_n = 7'b1111111;
        #500000000;

        key_i_n = 7'b1011111;
        #500000000; //500ms ?
        key_i_n = 7'b1111111;
        #500000000; 

        key_i_n = 7'b0111111;
        #500000000; //500ms ?
        key_i_n = 7'b1111111;
        #500000000; 

        switchkey_i_n = 4'b1110;
        #500000000;
        switchkey_i_n = 4'b1111;
        #500000000;

        switchkey_i_n = 4'b1101;
        #500000000;
        switchkey_i_n = 4'b1111;
        #500000000;

        switchkey_i_n = 4'b1011;
        #500000000;
        switchkey_i_n = 4'b1111;
        #500000000;

        switchkey_i_n = 4'b0111;
        #500000000;
        switchkey_i_n = 4'b1111;
        #500000000;

        switchkey_i_n = 4'b1001;
        #500000000;
        switchkey_i_n = 4'b1111;
        #500000000;
    end

    always
    begin
        #5 clk_i = ~clk_i;
    end

endmodule
