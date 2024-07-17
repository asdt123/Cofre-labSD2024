library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_registrador_16bits is
end tb_registrador_16bits;
architecture teste of tb_registrador_16bits is
component registrador_16bits is
	port 
	(
		clk			: in std_logic;
		load			: in std_logic;
		reset			: in std_logic;
		input			: in std_logic_vector(3 downto 0);
		output		: out std_logic_vector(15 downto 0)
	);
end component;
signal fio_Cl: std_logic :='0'; 
signal fio_Re, fio_l: std_logic;
signal fio_i: std_logic_vector(3 downto 0);
signal fio_o: std_logic_vector(15 downto 0);
begin
instancia_registrador_16bits: registrador_16bits port map(fio_cl, fio_l, fio_re, fio_i, fio_o);
-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_Cl<= not fio_Cl after 5ns;
fio_Re<='1','0' after 2ns;
fio_l<='0','1' after 15ns;
fio_i<=x"1", x"9" after 40ns;
end teste;