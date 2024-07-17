
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Cofre is
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

end entity;

architecture rtl of Cofre is
component Datapath is
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
end component;

component controladora is
	port(
		clk		:		in	std_logic;
		insert	:		in	std_logic;
		reset		:		in	std_logic;
		igual		:		in	std_logic;
		lim_erro	:		in	std_logic;
		fechar	:		in std_logic;
		teclado	: 		in std_logic;
		
		ent_lib	:		out std_logic;
		load_ent	: 		out std_logic;
		res_ent	:		out std_logic;
		res_cont	:		out std_logic;
		clk_cont	:		out std_logic;
		bloqueado:		out std_logic;
		errado	:		out std_logic;
		aberto	:		out std_logic
	);

end component;
	signal saida_contador: std_logic_vector(3 downto 0);
	signal conta_c, conta_r, comp_s, lim_t, load_r, reset_r, comp_dig, comp_insert, fio_erro, load_l, reset_l, led_r: std_logic;
begin
	fluxo_dados: Datapath port map(input_linha, clk, load_r, reset_r, conta_c,conta_r, input_col, comp_dig, comp_insert, comp_s, leds_7seg, lim_t);
--	fluxo_dados: Datapath port map(input_linha, clk, load_r, reset_r, conta_c,conta_r, teclado_col, comp_dig, comp_insert, comp_s, leds_7seg, lim_t);
	controle: controladora port map(clk, comp_insert, reset, comp_s, lim_t, fechar,comp_dig, ent_hab, load_r, reset_r, conta_r,conta_c, bloqueado, errado, aberto);

end rtl;
