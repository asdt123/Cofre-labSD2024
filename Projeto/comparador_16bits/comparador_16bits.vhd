-- Quartus II VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparador_16bits is
	port 
	(
		a	   : in std_logic_vector	(15 downto 0);
		b	   : in std_logic_vector	(15 downto 0);
		result : out std_logic
	);
end entity;

architecture rtl of comparador_16bits is
component comparador is

	generic
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		a	   : in std_logic_vector	((DATA_WIDTH-1) downto 0);
		b	   : in std_logic_vector	((DATA_WIDTH-1) downto 0);
		result : out std_logic
	);

end component;
signal resultado : std_logic_vector(3 downto 0);
begin
	comp_zero_tres: comparador generic map (4) port map (a(3 downto 0), b(3 downto 0), resultado(0));
	comp_quatro_sete: comparador generic map (4) port map (a(7 downto 4), b(7 downto 4), resultado(1));
	comp_oito_onze: comparador generic map (4) port map (a(11 downto 8), b(11 downto 8), resultado(2));
	comp_quinze_doze: comparador generic map (4) port map (a(15 downto 12), b(15 downto 12), resultado(3));
	
	result<='1' when resultado = "1111" else '0';
end rtl;
