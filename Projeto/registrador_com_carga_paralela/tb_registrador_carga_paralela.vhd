library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_registrador_carga_paralela is
end tb_registrador_carga_paralela;
architecture teste of tb_registrador_carga_paralela is
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
signal fio_Cl: std_logic :='0'; 
signal fio_Re, fio_e: std_logic;
signal fio_in, fio_ou: std_logic_vector (3 downto 0);
begin
instancia_registrador_carga_paralela: registrador_carga_paralela generic map (4) port map(fio_cl, fio_e, fio_re, fio_in, fio_ou);
-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_Cl<= not fio_Cl after 25ns;
fio_Re<='1','0' after 5ns;
fio_e<='0', '1' after 50ns;
fio_in<=x"4", x"8" after 75ns, x"9" after 125ns;
end teste;
