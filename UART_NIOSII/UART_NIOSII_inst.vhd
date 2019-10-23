	component UART_NIOSII is
		port (
			clk_clk       : in  std_logic := 'X'; -- clk
			reset_reset_n : in  std_logic := 'X'; -- reset_n
			serial_rxd    : in  std_logic := 'X'; -- rxd
			serial_txd    : out std_logic         -- txd
		);
	end component UART_NIOSII;

	u0 : component UART_NIOSII
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --    clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, --  reset.reset_n
			serial_rxd    => CONNECTED_TO_serial_rxd,    -- serial.rxd
			serial_txd    => CONNECTED_TO_serial_txd     --       .txd
		);

