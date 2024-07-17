library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_Teclado is
end tb_Teclado;
architecture teste of tb_Teclado is
component Teclado is
    Port (
		clk		: in std_logic;
		linha 	: in std_logic_vector(3 downto 0);
		tecla		: out std_logic_vector(3 downto 0)
    );
end component;
signal fio_Cl: std_logic; 
signal fio_linha: std_logic_vector (3 downto 0);
signal fio_tecla: std_logic_vector (3 downto 0);
begin
instancia_Teclado: Teclado port map(fio_cl, fio_linha, fio_tecla);
-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_Cl<= '0', '1' after 45ns, '0' after 50ns, '1' after 95ns;
fio_linha<=x"1" , x"2" after 10ns , x"4" after 20ns, x"8" after 30ns,x"0" after 40ns,x"1" after 50ns, x"2" after 60ns, x"4" after 70ns, x"8" after 80ns,x"0" after 90ns,x"1" after 100ns, x"2" after 110ns, x"4" after 120ns, x"8" after 130ns, x"0" after 140ns;
end teste;
