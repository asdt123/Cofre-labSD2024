library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_contador is
end tb_contador;
architecture teste of tb_contador is
component contador is 
generic
	(
		DATA_WIDTH:natural:= 4
	);

port
	(
		clk		  : in std_logic;
		reset	  : in std_logic;
		enable	  : in std_logic;
		q		  : out std_logic_vector ((Data_width-1) downto 0)
	);
end component;
signal fio_Cl: std_logic :='0'; 
signal fio_Re, fio_enable: std_logic;
signal fio_q: std_logic_vector (3 downto 0);
begin
instancia_contador: contador generic map(4) port map(fio_cl, fio_re, fio_enable, fio_q);
-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_Cl<= not fio_Cl after 5ns;
fio_Re<='1','0' after 2ns;
fio_enable<='0', '1' after 10ns;
end teste;
