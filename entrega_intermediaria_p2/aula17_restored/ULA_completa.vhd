LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ULA_completa IS
   GENERIC (
      larguraDados : NATURAL := 32
   );
   PORT (
      entradaA : IN STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
      entradaB : IN STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
      inverteB : IN STD_LOGIC;
      operacao : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      flag_zero : OUT STD_LOGIC;
      saida : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0)
   );
END ENTITY;

ARCHITECTURE componente OF ULA_completa IS
   SIGNAL slt : STD_LOGIC;
   SIGNAL cOut0 : STD_LOGIC;
   SIGNAL cOut1 : STD_LOGIC;
   SIGNAL cOut2 : STD_LOGIC;
   SIGNAL cOut3 : STD_LOGIC;
   SIGNAL cOut4 : STD_LOGIC;
   SIGNAL cOut5 : STD_LOGIC;
   SIGNAL cOut6 : STD_LOGIC;
   SIGNAL cOut7 : STD_LOGIC;
   SIGNAL cOut8 : STD_LOGIC;
   SIGNAL cOut9 : STD_LOGIC;
   SIGNAL cOut10 : STD_LOGIC;
   SIGNAL cOut11 : STD_LOGIC;
   SIGNAL cOut12 : STD_LOGIC;
   SIGNAL cOut13 : STD_LOGIC;
   SIGNAL cOut14 : STD_LOGIC;
   SIGNAL cOut15 : STD_LOGIC;
   SIGNAL cOut16 : STD_LOGIC;
   SIGNAL cOut17 : STD_LOGIC;
   SIGNAL cOut18 : STD_LOGIC;
   SIGNAL cOut19 : STD_LOGIC;
   SIGNAL cOut20 : STD_LOGIC;
   SIGNAL cOut21 : STD_LOGIC;
   SIGNAL cOut22 : STD_LOGIC;
   SIGNAL cOut23 : STD_LOGIC;
   SIGNAL cOut24 : STD_LOGIC;
   SIGNAL cOut25 : STD_LOGIC;
   SIGNAL cOut26 : STD_LOGIC;
   SIGNAL cOut27 : STD_LOGIC;
   SIGNAL cOut28 : STD_LOGIC;
   SIGNAL cOut29 : STD_LOGIC;
   SIGNAL cOut30 : STD_LOGIC;
	
	CONSTANT zero : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) := (OTHERS => '0');

BEGIN
   ULA0 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(0),
         entradaB => entradaB(0),
         slt => slt,
         operacao => operacao,
         inverteB => inverteB,
         cIn => inverteB,
         cOut => cOut0,
         saida => saida(0)
      );

   ULA1 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(1),
         entradaB => entradaB(1),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut0,
         cOut => cOut1,
         saida => saida(1)
      );

   ULA2 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(2),
         entradaB => entradaB(2),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut1,
         cOut => cOut2,
         saida => saida(2)
      );

   ULA3 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(3),
         entradaB => entradaB(3),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut2,
         cOut => cOut3,
         saida => saida(3)
      );

   ULA4 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(4),
         entradaB => entradaB(4),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut3,
         cOut => cOut4,
         saida => saida(4)
      );

   ULA5 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(5),
         entradaB => entradaB(5),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut4,
         cOut => cOut5,
         saida => saida(5)
      );

   ULA6 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(6),
         entradaB => entradaB(6),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut5,
         cOut => cOut6,
         saida => saida(6)
      );

   ULA7 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(7),
         entradaB => entradaB(7),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut6,
         cOut => cOut7,
         saida => saida(7)
      );

   ULA8 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(8),
         entradaB => entradaB(8),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut7,
         cOut => cOut8,
         saida => saida(8)
      );

   ULA9 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(9),
         entradaB => entradaB(9),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut8,
         cOut => cOut9,
         saida => saida(9)
      );

   ULA10 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(10),
         entradaB => entradaB(10),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut9,
         cOut => cOut10,
         saida => saida(10)
      );

   ULA11 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(11),
         entradaB => entradaB(11),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut10,
         cOut => cOut11,
         saida => saida(11)
      );

   ULA12 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(12),
         entradaB => entradaB(12),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut11,
         cOut => cOut12,
         saida => saida(12)
      );

   ULA13 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(13),
         entradaB => entradaB(13),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut12,
         cOut => cOut13,
         saida => saida(13)
      );

   ULA14 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(14),
         entradaB => entradaB(14),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut13,
         cOut => cOut14,
         saida => saida(14)
      );

   ULA15 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(15),
         entradaB => entradaB(15),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut14,
         cOut => cOut15,
         saida => saida(15)
      );

   ULA16 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(16),
         entradaB => entradaB(16),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut15,
         cOut => cOut16,
         saida => saida(16)
      );

   ULA17 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(17),
         entradaB => entradaB(17),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut16,
         cOut => cOut17,
         saida => saida(17)
      );

   ULA18 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(18),
         entradaB => entradaB(18),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut17,
         cOut => cOut18,
         saida => saida(18)
      );

   ULA19 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(19),
         entradaB => entradaB(19),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut18,
         cOut => cOut19,
         saida => saida(19)
      );

   ULA20 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(20),
         entradaB => entradaB(20),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut19,
         cOut => cOut20,
         saida => saida(20)
      );

   ULA21 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(21),
         entradaB => entradaB(21),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut20,
         cOut => cOut21,
         saida => saida(21)
      );

   ULA22 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(22),
         entradaB => entradaB(22),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut21,
         cOut => cOut22,
         saida => saida(22)
      );

   ULA23 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(23),
         entradaB => entradaB(23),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut22,
         cOut => cOut23,
         saida => saida(23)
      );

   ULA24 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(24),
         entradaB => entradaB(24),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut23,
         cOut => cOut24,
         saida => saida(24)
      );

   ULA25 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(25),
         entradaB => entradaB(25),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut24,
         cOut => cOut25,
         saida => saida(25)
      );

   ULA26 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(26),
         entradaB => entradaB(26),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut25,
         cOut => cOut26,
         saida => saida(26)
      );

   ULA27 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(27),
         entradaB => entradaB(27),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut26,
         cOut => cOut27,
         saida => saida(27)
      );

   ULA28 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(28),
         entradaB => entradaB(28),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut27,
         cOut => cOut28,
         saida => saida(28)
      );

   ULA29 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(29),
         entradaB => entradaB(29),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut28,
         cOut => cOut29,
         saida => saida(29)
      );

   ULA30 : ENTITY work.ULA30
      PORT MAP(
         entradaA => entradaA(30),
         entradaB => entradaB(30),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut29,
         cOut => cOut30,
         saida => saida(30)
      );

   ULA31 : ENTITY work.ULA31
      PORT MAP(
         entradaA => entradaA(31),
         entradaB => entradaB(31),
         slt => '0',
         operacao => operacao,
         inverteB => inverteB,
         cIn => cOut30,
         set => slt,
         saida => saida(31)
      );
		
		flag_zero <= '1' WHEN unsigned(saida) = unsigned(zero) ELSE '0';

END ARCHITECTURE;