`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 16:34:03
// Design Name: 
// Module Name: control_test
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

module control_test(
    input clk_i,
    input rst_n,

    input [6:0] key_i_n,  //= {key_up_i_n, key_down_i_n, key_left_i_n, key_right_i_n, key_mode_i_n, key0_i_n, key1_i_n};
    input [3:0] switchkey_i_n,

    output beep_o,
    output [1:0] led_o
    );


    //测试LED[0]并作为工作状态指示

    reg [31:0] timer_vessel_1;
    reg [1:0] led_o_r;

    always @(posedge clk_i)
    begin
        if(!rst_n)
        begin
            timer_vessel_1 <= 32'd0;
            led_o_r[0] <= 1'b1;
        end
        if(timer_vessel_1 == 32'd30_000_000) //300ms  仿真用3ms
        begin
            timer_vessel_1 <= 32'd0;
            led_o_r[0] <= ~led_o_r[0];
        end
        else if (timer_vessel_1 < 32'd30_000_000)
        begin
            timer_vessel_1 <= timer_vessel_1 + 32'd1;
        end
        else
        begin
            timer_vessel_1 <= timer_vessel_1;
            led_o_r[0] <= led_o_r[0];
        end
    end

    assign led_o[0] = led_o_r[0];


    //拨码开关及蜂鸣器 测试程序 0001/0010/0100/1000 数值越大，BEEP速度越慢,其余状态常灭
    
    reg [3:0] switchkey_i_n_r;
    reg [0:0] beep_o_r;
    reg [31:0] timer_vessel_2;


    always @(posedge clk_i)
    begin
        if(!rst_n)
        begin
            switchkey_i_n_r <= 4'b0000;
        end
        else 
        begin
            switchkey_i_n_r <= switchkey_i_n;
        end
    end 

    always @(posedge clk_i)
    begin
        if(!rst_n)
        begin
            timer_vessel_2 <= 32'd0;
        end
        else 
        begin
            case(switchkey_i_n_r)
                4'b0001:
                begin
                    if(timer_vessel_2 == 32'd50_000_000) //500ms
                    begin
                        timer_vessel_2 <= 32'd0;
                        beep_o_r <= ~beep_o_r;
                    end
                    else if (timer_vessel_2 < 32'd50_000_000)
                    begin
                        timer_vessel_2 <= timer_vessel_2 + 32'd1;
                    end
                    else 
                    begin
                        timer_vessel_2 <= timer_vessel_2;
                        beep_o_r <= beep_o_r;
                    end
                end
                4'b0010:
                begin
                    if(timer_vessel_2 == 32'd80_000_000) //800ms
                    begin
                        timer_vessel_2 <= 32'd0;
                        beep_o_r <= ~beep_o_r;
                    end
                    else if (timer_vessel_2 < 32'd80_000_000)
                    begin
                        timer_vessel_2 <= timer_vessel_2 + 32'd1;
                    end
                    else 
                    begin
                        timer_vessel_2 <= timer_vessel_2;
                        beep_o_r <= beep_o_r;
                    end
                end
                4'b0100:
                begin
                    if(timer_vessel_2 == 32'd120_000_000) //1200ms
                    begin
                        timer_vessel_2 <= 32'd0;
                        beep_o_r <= ~beep_o_r;
                    end
                    else if (timer_vessel_2 < 32'd120_000_000)
                    begin
                        timer_vessel_2 <= timer_vessel_2 + 32'd1;
                    end
                    else 
                    begin
                        timer_vessel_2 <= timer_vessel_2;
                        beep_o_r <= beep_o_r;
                    end
                end
                4'b1000:
                begin
                    if(timer_vessel_2 == 32'd150_000_000) //1500ms
                    begin
                        timer_vessel_2 <= 32'd0;
                        beep_o_r <= ~beep_o_r;
                    end
                    else if (timer_vessel_2 < 32'd150_000_000)
                    begin
                        timer_vessel_2 <= timer_vessel_2 + 32'd1;
                    end
                    else 
                    begin
                        timer_vessel_2 <= timer_vessel_2;
                        beep_o_r <= beep_o_r;
                    end
                end 
                default:
                begin
                    beep_o_r <= 1'b1;
                end
            endcase
        end
    end

    assign beep_o = beep_o_r;


    //五向按键和贴片按键测试程序

    reg [6:0] key_i_n_r;
    reg [6:0] key_temp;
    reg [6:0] key_state;
    wire [6:0] key_state;
    reg [31:0] timer_vessel_3;

    always @(posedge clk_i)
    begin
        if(timer_vessel_3 == 32'd20_000_000) //20ms 
        begin
            timer_vessel_3 <= 32'd0;
            key_i_n_r <= key_i_n;
        end
        else if (timer_vessel_3 < 32'd20_000_000)
        begin
            timer_vessel_3 <= timer_vessel_3 + 32'd1;
        end
        else 
        begin
            timer_vessel_3 <= timer_vessel_3;
        end 
    end

    always @(posedge clk_i)
    begin
        if(!rst_n)
        begin
            key_temp <= 7'b0000000;
        end
        else 
        begin
            key_temp <= key_i_n_r;
            key_state = key_temp[6:0]&(~key_i_n_r[6:0]);
        end
    end

    always @(posedge clk_i)
    begin
        if(key_state[0]) led_o_r[1] <= ~led_o_r[1];
        if(key_state[1]) led_o_r[1] <= ~led_o_r[1];
        if(key_state[2]) led_o_r[1] <= ~led_o_r[1];
        if(key_state[3]) led_o_r[1] <= ~led_o_r[1];
        if(key_state[4]) led_o_r[1] <= ~led_o_r[1];
        if(key_state[5]) led_o_r[1] <= ~led_o_r[1];
        if(key_state[6]) led_o_r[1] <= ~led_o_r[1];
    end 

    assign led_o[1] = led_o_r[1];

endmodule
