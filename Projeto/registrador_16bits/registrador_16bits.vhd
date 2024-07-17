
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registrador_16bits is
	port 
	(
		clk			: in std_logic;
		load			: in std_logic;
		reset			: in std_logic;
		input			: in std_logic_vector(3 downto 0);
		output		: out std_logic_vector(15 downto 0)
	);
end entity;

architecture rtl of registrador_16bits is
component registrador_carga_paralela is

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

end component;
signal intermediario : std_logic_vector(15 downto 0);
begin
	reg_zero_tres: registrador_carga_paralela generic map (4) port map (clk, load, reset, input, intermediario(3 downto 0));
	reg_quatro_sete: registrador_carga_paralela generic map (4) port map (clk, load, reset, intermediario(3 downto 0), intermediario(7 downto 4));
	reg_oito_onze: registrador_carga_paralela generic map (4) port map (clk, load, reset, intermediario(7 downto 4), intermediario(11 downto 8));
	reg_quinze_doze: registrador_carga_paralela generic map (4) port map (clk, load, reset, intermediario(11 downto 8), intermediario(15 downto 12));
	output(3 downto 0)<=intermediario(3 downto 0);
	output(7 downto 4)<=intermediario(7 downto 4);
	output(11 downto 8)<=intermediario(11 downto 8);
	output(15 downto 12)<=intermediario(15 downto 12);
end rtl;
