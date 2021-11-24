library ieee;
use ieee.std_logic_1164.all;

entity decoder is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(9 downto 0)
  );
end entity;

architecture comportamento of decoder is
  constant lw  : std_logic_vector(5 downto 0) := "100011";
  constant sw  : std_logic_vector(5 downto 0) := "101011";
  constant beqs : std_logic_vector(5 downto 0) := "000100";
  constant jmp : std_logic_vector(5 downto 0) := "000010";
  constant r : std_logic_vector(5 downto 0) := "000000";
  
  
  alias hab_escrita_mem: std_logic is saida(0);
  alias hab_leitura_mem: std_logic is saida(1);
  alias beq: std_logic is saida(2);
  alias mux_ula_mem: std_logic is saida(3);
  alias ula_op: std_logic_vector is saida(5 downto 4);
  alias mux_imediato: std_logic is saida(6);
  alias hab_escrita_reg: std_logic is saida(7);
  alias mux_rt_rd: std_logic is saida(8);
  alias mux_jmp: std_logic is saida(9);
  begin
  
	 hab_escrita_mem   <= '1' when (entrada = sw) else '0';
	 hab_leitura_mem   <= '1' when (entrada = lw) else '0';
	 beq   				 <= '1' when (entrada = beqs) else '0';
	 mux_ula_mem 	    <= '0' when (entrada = r) else '1';
    ula_op            <= "10" when(entrada = r) else "01" when (entrada = beqs) else "00";
	 mux_imediato 	    <= '1' when (entrada = lw or entrada = sw) else '0';
	 hab_escrita_reg 	 <= '0' when (entrada = sw or entrada = beqs) else '1';
	 mux_rt_rd 	       <= '1' when (entrada = r) else '0';
	 mux_jmp 	       <= '1' when (entrada = jmp) else '0';
    
end architecture;