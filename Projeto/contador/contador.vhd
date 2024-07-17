-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity contador is

	generic
	(
		DATA_WIDTH:natural:= 4
	);

	port
	(
		clk			: in std_logic;
		reset			: in std_logic;
		enable		: in std_logic;
		q				: out std_logic_vector ((Data_width-1) downto 0)
	);

end entity;

architecture rtl of contador is
begin

	process (clk)
		variable   cnt		   : integer:=0;
	begin
		if (rising_edge(clk)) then

			if reset = '1' then
				-- Reset the counter to 0
				cnt := 0;

			elsif enable = '1' then
				-- Increment the counter if counting is enabled			
					cnt := cnt + 1;
					if cnt = (2**Data_Width) then
						cnt := 0;
					end if;
			end if;
		end if;

		-- Output the current count
		q <= std_logic_vector(to_unsigned(cnt, Data_width));
	end process;

end rtl;
