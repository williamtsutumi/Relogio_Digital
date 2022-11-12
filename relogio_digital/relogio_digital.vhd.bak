LIBRARY ieee;
USE ieee. std_logic_1164.all;
 
ENTITY relogio_digital IS
	PORT(CLEAR: IN BIT;
	     CLOCK: IN STD_LOGIC;
	       SEG: OUT BIT_VECTOR(3 DOWNTO 0);
	       MIN: OUT BIT_VECTOR(2 DOWNTO 0));
END relogio_digital;

 
ARCHITECTURE arch OF relogio_digital IS

COMPONENT cont_mod10 IS
	PORT(CLEAR: IN BIT;
		 CLOCK: IN STD_LOGIC;
	       SEG: OUT BIT_VECTOR(3 DOWNTO 0));
END COMPONENT;
COMPONENT cont_mod6 IS
	PORT(CLEAR: IN BIT;
		 CLOCK: IN STD_LOGIC;
	       MIN: OUT BIT_VECTOR(2 DOWNTO 0));
END COMPONENT;

SIGNAL Q, QM: BIT_VECTOR(3 DOWNTO 0) := "0000";
SIGNAL QB, QBM: BIT_VECTOR(3 DOWNTO 0) := "1111";

BEGIN
	contador_segundos: cont_mod10 PORT MAP(CLEAR, CLOCK, SEG);
	contador_minutos:  cont_mod6  PORT MAP(CLEAR, CLOCK, MIN);
END arch;
