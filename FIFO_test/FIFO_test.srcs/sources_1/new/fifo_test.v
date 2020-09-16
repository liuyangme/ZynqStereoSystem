`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/16 13:39:27
// Design Name: 
// Module Name: fifo_test
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


module fifo_test(
    input clk_i,   //100MHz Clk
    input rst_n_i  // Reset
    );

    reg [15:0] w_data;  //FIFO Write Data
    wire wr_en;         //FIFO Write Enable 
    wire rd_en;         //FIFO Read Enable
    wire [15:0] r_data; //FIFO Read Data
    wire full;          //Full Flag
    wire empty;         //Empty Flag
    wire [8:0] rd_data_count; //Readable Data Count 
    wire [8:0] wr_data_count; //Writeable Data Count

    wire clk_100M;  //PLL 100MHz
    wire clk_75M;   //PLL 75MHz
    wire locked;    //PLL Lock

    wire fifo_rst_n;    //FIFO Reset 

    wire wr_clk;    //FIFO Write Clk
    wire rd_clk;    //FIFO Read Clk
    reg [7:0] wcnt;
    reg [7:0] rcnt;

    clk_wiz_0 fifo_pll
    (
        .clk_out1(clk_100M),
        .clk_out2(clk_75M),

        .reset(~rst_n_i),
        .locked(locked),
        .clk_in1(clk_i)
    );

    assign fifo_rst_n = locked;
    assign wr_clk = clk_100M;
    assign rd_clk = clk_75M;

    //Write FIFO State Machine
    localparam W_IDLE = 1;
    localparam W_FIFO = 2;

    reg [2:0] write_state;
    reg [2:0] next_write_state;

    always@ (posedge wr_clk or negedge fifo_rst_n)
    begin 
        if(!fifo_rst_n)
            write_state <= W_IDLE;
        else 
            write_state <= next_write_state;
    end 

    always@ (*)
    begin
        case(write_state)
            W_IDLE:
            begin
                if(wcnt == 8'd79)
                    next_write_state <= W_FIFO;
                else
                    next_write_state <= W_IDLE; 
            end

            W_FIFO:
                next_write_state <= W_FIFO;

            default:
                next_write_state <= W_IDLE;
        endcase
    end 

    always@ (posedge wr_clk or negedge fifo_rst_n)
    begin
        if(!fifo_rst_n)
            wcnt <= 8'd0;
        else if (write_state == W_IDLE)
            wcnt <= wcnt+1'b1;
        else
            wcnt <= 8'd0;
    end

    assign wr_en = (write_state == W_FIFO) ? ~full : 1'b0;

    always@ (posedge wr_clk or negedge fifo_rst_n)
    begin
        if(!fifo_rst_n)
            w_data <= 16'd1;
        else if (wr_en)
            w_data <= w_data + 1'b1;
    end

    //Read FIFO State Machine
    localparam R_IDLE = 1;
    localparam R_FIFO = 2;

    reg [2:0] read_state;
    reg [2:0] next_read_state;

    always@ (posedge rd_clk or negedge fifo_rst_n)
    begin
        if(!fifo_rst_n)
            read_state <= R_IDLE;
        else 
            read_state <= next_read_state;
    end

    always@ (*)
    begin
        case(read_state)
            R_IDLE:
                begin
                    if(rcnt == 8'd79)
                        next_read_state <= R_FIFO;
                    else 
                        next_read_state <= R_IDLE; 
                end
            R_FIFO:
                next_read_state <= R_FIFO;
            default:
                next_read_state <= R_IDLE;
        endcase
    end

    always@ (posedge rd_clk or negedge fifo_rst_n)
    begin
        if(!fifo_rst_n)
            rcnt <= 8'd0;
        else if(write_state == W_IDLE)
            rcnt <= rcnt + 1'b1;
        else
            rcnt <= 8'd0;
    end

    assign rd_en = (read_state == R_FIFO) ? ~empty : 1'b0;

    fifo_ip fifo_ip_inst
    (
        .rst(~fifo_rst_n),
        .wr_clk(wr_clk),
        .rd_clk(rd_clk),
        .din(w_data),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .dout(r_data),
        .full(full),
        .empty(empty),
        .rd_data_count(rd_data_count),
        .wr_data_count(wr_data_count)
    );

    ila_m0 ila_wfifo(
        .clk(wr_clk),
        .probe0(w_data),
        .probe1(wr_en),
        .probe2(full),
        .probe3(wr_data_count)
    );

    ila_m0 ila_rfifo(
        .clk(rd_clk),
        .probe0(r_data),
        .probe1(rd_en),
        .probe2(empty),
        .probe3(rd_data_count)
    );

endmodule
