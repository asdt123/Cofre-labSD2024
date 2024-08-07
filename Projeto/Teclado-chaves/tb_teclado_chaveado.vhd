library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_Teclado_chaveado is
end tb_Teclado_chaveado;
architecture teste of tb_Teclado_chaveado is
component Teclado_chaveado is
   Port (
      linha : in  std_logic_vector(3 downto 0); -- Linhas do teclado
      col_ativa : in std_logic_vector(2 downto 0); -- Colunas do teclado
      tecla : out std_logic_vector(3 downto 0) -- Saída da tecla pressionada
   );
end component;
signal fio_lin, fio_tec: std_logic_vector(3 downto 0);
signal fio_col: std_logic_vector(2 downto 0);

begin
instancia_Teclado_chaveado: Teclado_chaveado port map(fio_lin, fio_col, fio_tec);
-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_lin<= x"1", x"2" after 40ns, x"4" after 80ns, x"8" after 120ns, x"0" after 160ns;
fio_col<= "001", "010" after 10ns, "100" after 20ns, "000" after 30ns, "001" after 40ns, "010" after 50ns, "100" after 60ns, "000" after 70ns,"001" after 80ns, "010" after 90ns, "100" after 100ns,"000" after 110ns, "001" after 120ns, "010" after 130ns, "100" after 140ns,"000" after 150ns,"001" after 160ns, "010" after 170ns, "100" after 180ns;
end teste;
