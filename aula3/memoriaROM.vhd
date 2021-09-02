library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 4
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant CLRA   : std_logic_vector(3 downto 0) := "0000" ;
  constant LDA   : std_logic_vector(3 downto 0) := "0001" ;
  constant SOMA   : std_logic_vector(3 downto 0) := "0010" ;
  constant SUB   : std_logic_vector(3 downto 0) := "0011" ;
  constant NOP   : std_logic_vector(3 downto 0) := "0100" ;
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- CTRL = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
      --                 CTRL   Prox Estado
        tmp(0)  := CLRA ;
        tmp(1)  := LDA  ;   -- Desta posicao para baixo, é necessário acertar o CTRL
        tmp(2)  := SOMA ;
        tmp(3)  := SOMA ;
        tmp(4)  := SUB ;
        tmp(5)  := NOP ;
        tmp(6)  := NOP ;
        tmp(7)  := NOP ;
        tmp(8)  := NOP ;
        tmp(9)  := NOP ;
        tmp(10) := NOP ;
        tmp(11) := NOP ;
        tmp(12) := NOP ;
        tmp(13) := NOP ;
        tmp(14) := NOP ;
        tmp(15) := NOP ;
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;