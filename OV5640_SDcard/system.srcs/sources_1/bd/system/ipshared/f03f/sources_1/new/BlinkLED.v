`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/22 22:09:41
// Design Name: 
// Module Name: BlinkLED
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


module BlinkLED(
    input clk_i,
    input rst_n,
    output blinkled_o
    );

    reg blinkled_o_r;
    reg [31:0] time_vessle;

    always@(posedge clk_i)
    begin
        if(!rst_n)
        begin
            blinkled_o_r <= 1'b1;
            time_vessle = 32'd0;
        end
        else if(time_vessle >= 32'd20_000_000)
        begin
            time_vessle <= 32'd0;
            blinkled_o_r <= ~blinkled_o_r;
        end
        else 
        begin
            blinkled_o_r <= blinkled_o_r + 32'd1;
        end
    end  //always 

    assign  blinkled_o = blinkled_o_r;

endmodule
