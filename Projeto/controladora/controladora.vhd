-- Quartus II VHDL Template
-- Four-estado_atual Moore estado_atual Machine

-- A Moore machine's outputs are dependent only on the current estado_atual.
-- The output is written only when the estado_atual changes.  (estado_atual
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity controladora is

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

end entity;

architecture rtl of controladora is

	-- Build an enumerated type for the estado_atual machine
	type estado is (inicio, leitura, recebe_dig, verif_senha, erro, abrir, bloquear);

	-- Register to hold the current estado_atual
	signal estado_atual   : estado;
	signal estado_futuro  : estado;
	
	signal insert_passado, teclado_passado, fechar_passado : std_logic;

begin

	-- Logic to advance to the next estado_atual
	process (clk, reset)
	begin
		if reset = '1' then
			estado_atual <= inicio;
		elsif rising_edge(clk) then
			estado_atual <= estado_futuro;
			insert_passado <=insert;
			teclado_passado <= teclado;
			fechar_passado <= fechar;
		end if;
	end process;

	-- Output depends solely on the current estado_atual
	process (estado_atual, insert,teclado, igual, lim_erro, fechar)
	begin
		case estado_atual is
			when inicio =>
				ent_lib<='0';
				aberto<='1';
				bloqueado<='1';
				errado<='1';
				res_cont<='1';
				clk_cont<='0';
				res_ent<='1';
				load_ent<='0';
				estado_futuro<=leitura;
			when leitura =>
					ent_lib<='1';
					aberto<='0';
					bloqueado<='0';
					errado<='0';
					res_cont<='0';
					clk_cont<='0';
					res_ent<='0';
					load_ent<='0';
				if insert = '1' and insert_passado = '0' then
					estado_futuro<=verif_senha;
				elsif teclado ='0'and teclado_passado = '1' then
					estado_futuro<=recebe_dig;
				else
					estado_futuro<=leitura;
				end if;
			when recebe_dig =>
					ent_lib<='1';
					aberto<='0';
					bloqueado<='0';
					errado<='0';
					res_cont<='0';
					clk_cont<='0';
					res_ent<='0';
					load_ent<='1';
					estado_futuro<=leitura;
			when verif_senha =>
					ent_lib<='0';
					aberto<='0';
					bloqueado<='0';
					errado<='0';
					res_cont<='0';
					clk_cont<='1';
					res_ent<='0';
					load_ent<='0';
					if igual='0' then
						estado_futuro<=erro;
					else
						estado_futuro<=abrir;
					end if;
			when erro =>
					ent_lib<='0';
					aberto<='0';
					bloqueado<='0';
					errado<='1';
					res_cont<='0';
					clk_cont<='0';
					res_ent<='1';
					load_ent<='0';
				if lim_erro='1' then
					estado_futuro<=bloquear;
				else
					estado_futuro<=leitura;
				end if;
			when abrir =>
					ent_lib<='0';
					aberto<='1';
					bloqueado<='0';
					errado<='0';
					res_cont<='1';
					clk_cont<='0';
					res_ent<='1';
					load_ent<='0';
					if fechar ='1' and fechar_passado='0' then
						estado_futuro<=leitura;
					else
						estado_futuro<=abrir;
					end if;
			when bloquear =>
					ent_lib<='0';
					aberto<='0';
					bloqueado<='1';
					errado<='1';
					res_cont<='0';
					clk_cont<='0';
					res_ent<='1';
					load_ent<='0';
					estado_futuro<=bloquear;
		end case;
	end process;

end rtl;
