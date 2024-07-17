library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Teclado is
    Port (
		clk		: in std_logic;
		linha 	: in std_logic_vector(3 downto 0);
		colun		: out std_logic_vector(2 downto 0);
		tecla		: out std_logic_vector(3 downto 0)
    );
end Teclado;

architecture Behavioral of Teclado is
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
signal col_ativa 	: std_logic_vector(2 downto 0);
signal enable		: std_logic;
begin
	colunas : iterador generic map (3) port map (clk, enable, col_ativa);
	process (linha, col_ativa) is
	begin
		if col_ativa = "001" then
			case linha is 
				when "0001" =>
					tecla<=x"9";
					enable<='0';
				when "0010" =>
					tecla<=x"6";
					enable<='0';
				when "0100" =>
					tecla<=x"3";
					enable<='0';
				when "1000" =>
					tecla<=x"B";
					enable<='0';
				when others =>
					tecla<=x"F";
					enable<='1';					
			end case;
		elsif col_ativa = "010" then
			case linha is 
				when "0001" =>
					tecla<=x"8";
					enable<='0';
				when "0010" =>
					tecla<=x"5";
					enable<='0';
				when "0100" =>
					tecla<=x"2";
					enable<='0';
				when "1000" =>
					tecla<=x"0";
					enable<='0';
				when others =>
					tecla<=x"F";
					enable<='1';				
			end case;
		else
			case linha is 
				when "0001" =>
					tecla<=x"7";
					enable<='0';
				when "0010" =>
					tecla<=x"4";
					enable<='0';
				when "0100" =>
					tecla<=x"1";
					enable<='0';
				when "1000" =>
					tecla<=x"A";
					enable<='0';
				when others =>
					tecla<=x"F";
					enable<='1';
			end case;
		end if;
		colun<=col_ativa;
	end process;
end Behavioral;
