`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/18 18:00:13
// Design Name: 
// Module Name: OVSensor_tp
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
module count_rst#
(
	parameter[19:0]num = 20'hffff0
)(
	input clk_i,
	output rst_o
    );

	reg[19:0] cnt = 20'd0;
	reg rst_d;

	/*count for clock*/
	always@(posedge clk_i)
	begin
		cnt <= ( cnt <= num )?( cnt + 20'd1 ):num;
	end

	/*generate output signal*/
	always@(posedge clk_i)
	begin
		rst_d <= ( cnt >= num )?1'b1:1'b0;
	end	

	assign rst_o = rst_d;

endmodule

