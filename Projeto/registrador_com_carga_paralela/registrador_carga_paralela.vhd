-- Quartus II VHDL Template
-- Barrel Shifter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registrador_carga_paralela is

	generic
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		clk			: in std_logic;
		enable		: in std_logic;
		reset			: in std_logic;
		input			: in std_logic_vector((Data_width-1) downto 0);
		output		: out std_logic_vector((Data_width-1) downto 0)
	);

end entity;

architecture rtl of registrador_carga_paralela is
begin

	process (reset, clk)
	begin
		if reset = '1' then
			output <= STD_LOGIC_VECTOR(to_unsigned(0,Data_width));
		elsif (rising_edge(clk)) then
			if (enable = '1') then
				output <= input;
			end if;
		end if;
	end process;
end rtl;
