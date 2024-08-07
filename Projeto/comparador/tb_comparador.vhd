library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_comparador is
end tb_comparador;
architecture teste of tb_comparador is
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
signal fio_a, fio_b: std_logic_vector(3 downto 0); 
signal fio_Re: std_logic;
begin
instancia_comparador: comparador generic map(4) port map(fio_a, fio_b, fio_re);
-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_a<=x"3", x"4" after 30ns, x"5" after 70ns;
fio_b<=x"4";
end teste;
