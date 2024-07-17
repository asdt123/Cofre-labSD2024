library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_iterador is
end tb_iterador;
architecture teste of tb_iterador is
component iterador is
	generic
	(
		DATA_WIDTH:natural:= 4
	);

	port
	(
		clk			: in std_logic;
		enable		: in std_logic;
		q				: out std_logic_vector ((Data_width-1) downto 0)
	);
end component;
signal fio_Cl: std_logic :='0';
signal fio_e: std_logic :='1';
signal fio_q: std_logic_vector (3 downto 0);
begin
instancia_iterador: iterador generic map(4) port map(fio_cl, fio_e, fio_q);
-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_Cl<= not fio_Cl after 5ns;
fio_e<= not fio_e after 50ns;
end teste;
