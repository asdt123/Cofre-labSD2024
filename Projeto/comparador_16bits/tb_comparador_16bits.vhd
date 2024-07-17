library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_comparador_16bits is
end tb_comparador_16bits;
architecture teste of tb_comparador_16bits is
component comparador_16bits is
	port 
	(
		a	   : in std_logic_vector	(15 downto 0);
		b	   : in std_logic_vector	(15 downto 0);
		result : out std_logic
	);
end component;
signal fio_a, fio_b: std_logic_vector (15 downto 0); 
signal fio_Re: std_logic;
begin
instancia_comparador_16bits: comparador_16bits port map(fio_a, fio_b, fio_re);
-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_a<= x"0004", x"0040" after 40ns;
fio_b<= x"0004", x"0040" after 80ns;
end teste;
