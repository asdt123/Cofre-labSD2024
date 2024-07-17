-- Quartus II VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Datapath is
	port 
	(
		teclado_lin	:in std_logic_vector	(3 downto 0);
		clk			:in std_logic;
		load_reg		:in std_logic;
		reset_reg	:in std_logic;
		cont_clk		:in std_logic;
		cont_reset	:in std_logic;
		teclado_col :in std_logic_vector (2 downto 0);
		
--		teclado_col :out std_logic_vector (2 downto 0);
		digito		:out std_logic;
		insert		:out std_logic;
		comp_senha	:out std_logic;
		leds_7seg	:out std_logic_vector(27 downto 0);
		lim_tent		:out std_logic
	);

end entity;

architecture rtl of Datapath is
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

component comparador_16bits is
	port 
	(
		a	   : in std_logic_vector	(15 downto 0);
		b	   : in std_logic_vector	(15 downto 0);
		result : out std_logic
	);
end component;

component registrador_16bits is
	port 
	(
		clk			: in std_logic;
		load			: in std_logic;
		reset			: in std_logic;
		input			: in std_logic_vector(3 downto 0);
		output		: out std_logic_vector(15 downto 0)
	);
end component;

component Teclado is
    Port (
		clk		: in std_logic;
		linha 	: in std_logic_vector(3 downto 0);
		colun		: out std_logic_vector(2 downto 0);
		tecla		: out std_logic_vector(3 downto 0)
    );
end component;
component Bcd_7seg is
	port (
	entrada: in std_logic_vector (3 downto 0);
	saida: out std_logic_vector (6 downto 0)
	);
end component;
component Teclado_chaveado is
    Port (
        linha : in  std_logic_vector(3 downto 0); -- Linhas do teclado
        col_ativa : in std_logic_vector(2 downto 0); -- Colunas do teclado
        tecla : out std_logic_vector(3 downto 0) -- Saída da tecla pressionada
    );
end component;
	signal saida_teclado: std_logic_vector(3 downto 0);
	signal saida_registrador: std_logic_vector(15 downto 0);
	signal saida_contador: std_logic_vector(2 downto 0);
begin
	entrada_chave: teclado_chaveado port map(teclado_lin, teclado_col, saida_teclado);
--	entrada : teclado port map (clk, teclado_lin, teclado_col, saida_teclado);
	verif_numero: comparador generic map(4) port map(saida_teclado, x"F", digito);
	verif_insert: comparador generic map(4) port map(saida_teclado, x"A", insert);
	registrador_senha: registrador_16bits port map(clk, load_reg, reset_reg, saida_teclado, saida_registrador);
	verif_senha: comparador_16bits port map(saida_registrador,x"2604",comp_senha);
	cont_tent: contador generic map(3) port map(cont_clk, cont_reset, '1', saida_contador);
	verif_tent: comparador generic map(3) port map(saida_contador,"101", lim_tent);
	primeiro_numero : Bcd_7seg port map(saida_registrador(3 downto 0), leds_7seg(6 downto 0));
	segundo_numero : Bcd_7seg port map(saida_registrador(7 downto 4), leds_7seg(13 downto 7));
	terceiro_numero : Bcd_7seg port map(saida_registrador(11 downto 8), leds_7seg(20 downto 14));
	quarto_numero : Bcd_7seg port map(saida_registrador(15 downto 12), leds_7seg(27 downto 21));
end rtl;