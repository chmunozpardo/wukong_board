`timescale 1ns / 1ps

module led_top(
    input sys_clk,
    output uart_tx_o,
    output led_1[1:0]
);

parameter DIV_1SEC = 26'd50000000;
parameter DIV_500MSEC = 26'd25000000;

parameter DIV_72M_1SEC = 27'd72000000;
parameter DIV_72M_500MSEC = 27'd36000000;

reg [25:0] count_div_1sec = 26'd0;
reg [26:0] count_div_72m_1sec = 27'd0;

reg [4:0] count_uart_data = 0;
reg [7:0] uart_input = 0;
reg [7:0] uart_byte_data [15:0];

reg [3:0] fsm_uart = 0;
reg uart_send = 0;
reg uart_finished = 0;
reg uart_tx_enable = 0;
reg led_72m = 0;

wire clk_multiplied;
wire clk_72m;
wire clk_72m_locked;

wire uart_tx_busy;
wire uart_tx_done;
wire sys_clk_bufg;

reg startup = 0;

initial begin
    uart_byte_data[0] = "H";
    uart_byte_data[1] = "e";
    uart_byte_data[2] = "l";
    uart_byte_data[3] = "l";
    uart_byte_data[4] = "o";
    uart_byte_data[5] = " ";
    uart_byte_data[6] = "w";
    uart_byte_data[7] = "o";
    uart_byte_data[8] = "r";
    uart_byte_data[9] = "l";
    uart_byte_data[10] = "d";
    uart_byte_data[11] = "!";
    uart_byte_data[12] = "\r";
    uart_byte_data[13] = "\n";
end

reg reset_clk = 0;

IBUFG CLK_ibufg_A(
    .I(sys_clk),
    .O(sys_clk_bufg)
);

clk_wiz_0 CLK_400_INST(
    .clk_400m(clk_multiplied),
    .reset(reset_clk),
    .locked(),
    .clk_in1(sys_clk_bufg)
);

clk_wiz_72m CLK_72_INST(
    .clk_72m(clk_72m),
    .reset(reset_clk),
    .locked(clk_72m_locked),
    .clk_in1(sys_clk_bufg)
);

uart_tx UART_TX_INST(
    .clk_i(clk_72m),
    .uart_tx_data_i(uart_input),
    .uart_tx_en_i(uart_send),
    .uart_tx_done(uart_tx_done),
    .uart_tx_busy(uart_tx_busy),
    .uart_tx_o(uart_tx_o)
);

always@(posedge clk_72m) begin
    if (count_div_72m_1sec == DIV_72M_1SEC) begin
        count_div_72m_1sec = 27'd0;
        uart_tx_enable = ~uart_tx_enable;
        uart_send = 1;
    end
    else if (uart_tx_done == 1) begin
        if (count_uart_data < 4'd13) begin
            uart_send = 1;
            count_uart_data = count_uart_data + 1;
            uart_input = uart_byte_data[count_uart_data];
        end
        else begin
            uart_send = 0;
            count_uart_data = 0;
            uart_input = uart_byte_data[count_uart_data];
        end
    end
    else begin
        uart_send = 0;
        count_div_72m_1sec = count_div_72m_1sec + 1;
    end
end

assign led_1[1] = uart_send;
assign led_1[0] = uart_tx_enable;

endmodule
