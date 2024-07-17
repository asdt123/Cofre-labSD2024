	library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Teclado_chaveado is
    Port (
        linha : in  std_logic_vector(3 downto 0); -- Linhas do teclado
        col_ativa : in std_logic_vector(2 downto 0); -- Colunas do teclado
        tecla : out std_logic_vector(3 downto 0) -- Saída da tecla pressionada
    );
end Teclado_chaveado;

architecture rtl of Teclado_chaveado is
begin
   process (linha, col_ativa) is
	begin
	if col_ativa = "001" then
		case linha is 
				when "0001" =>
					tecla<=x"9";
				when "0010" =>
					tecla<=x"6";
				when "0100" =>
					tecla<=x"3";
				when "1000" =>
					tecla<=x"B";
				when others =>
					tecla<=x"F";
			end case;
		elsif col_ativa = "010" then
			case linha is 
				when "0001" =>
					tecla<=x"8";
				when "0010" =>
					tecla<=x"5";
				when "0100" =>
					tecla<=x"2";
				when "1000" =>
					tecla<=x"0";
				when others =>
					tecla<=x"F";				
			end case;
		elsif col_ativa = "100" then
			case linha is 
				when "0001" =>
					tecla<=x"7";
				when "0010" =>
					tecla<=x"4";
				when "0100" =>
					tecla<=x"1";
				when "1000" =>
					tecla<=x"A";
				when others =>
					tecla<=x"F";
			end case;
		else
			tecla<=x"F";
		end if;
	end process;
end rtl;