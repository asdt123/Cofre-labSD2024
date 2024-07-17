library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_Cofre is
end tb_Cofre;
architecture teste of tb_Cofre is
component Cofre is 
	port 
	(
		input_linha	:in std_logic_vector	(3 downto 0);
		clk			:in std_logic;
		reset			:in std_logic;
		fechar		:in std_logic;
		input_col	:in std_logic_vector (2 downto 0);
		
--		teclado_col :out std_logic_vector (2 downto 0);
		ent_hab		:out std_logic;
		aberto		:out std_logic;
		bloqueado	:out std_logic;
		leds_7seg	:out std_logic_vector(27 downto 0);
		errado		:out std_logic
	);
end component;
signal fio_Cl: std_logic :='0'; 
signal fio_Re, fio_fe,fio_ent, fio_ab, fio_bl, fio_e: std_logic;
signal fio_in	: std_logic_vector(3 downto 0);
signal fio_leds: std_logic_vector(27 downto 0);
signal fio_tec	: std_logic_vector(2 downto 0);
begin
instancia_Cofre: Cofre port map(fio_in,fio_cl, fio_re, fio_fe, fio_tec, fio_ent, fio_ab, fio_bl, fio_leds, fio_e);
-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_cl<=not fio_Cl after 500ps;
fio_re<='0', '1' after 44ns, '0' after 45ns;
fio_fe<='0', '1' after 75ns;

-- guia teclado
--		 	sw0 -sw1 -  sw2
--sw8		7		8		  9
--sw7		4		5		  6
--sw6 	1		2		  3
--sw5		A		0		  
fio_tec<="000","001" after 4ns, "000" after 8ns, "001" after 12ns, "000" after 16ns, "100" after 20ns, "010" after 50ns,"001" after 56ns,"010" after 60ns, "100" after 64ns;

fio_in<=x"1", x"2" after 8ns, x"1" after 16ns, x"8" after 20ns, x"0" after 24ns,x"8" after 28ns, x"0" after 32ns,x"8" after 36ns, x"0" after 40ns,x"8" after 44ns, x"0" after 50ns, x"4" after 52ns, x"0" after 54ns,x"2" after 56ns, x"0" after 58ns,x"8" after 60ns, x"0" after 62ns, x"2" after 64ns,x"0" after 66ns, x"8" after 68ns  ;

end teste;
