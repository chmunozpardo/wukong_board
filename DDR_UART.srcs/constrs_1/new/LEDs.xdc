set_property IOSTANDARD LVCMOS33 [get_ports {led_1[1]}]
set_property PACKAGE_PIN J6 [get_ports {led_1[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {led_1[0]}]
set_property PACKAGE_PIN H6 [get_ports {led_1[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN M22 [get_ports sys_clk]

set_property IOSTANDARD LVCMOS33 [get_ports uart_tx_o]
set_property PACKAGE_PIN E3 [get_ports uart_tx_o]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sys_clk_bufg]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
