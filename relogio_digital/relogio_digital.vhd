LIBRARY ieee;
USE ieee. std_logic_1164.all;
 
ENTITY relogio_digital IS
	PORT(CLEAR: IN BIT;
	     CLOCK: IN STD_LOGIC;
	     DISPLAYS0: OUT BIT_VECTOR(0 TO 6);
	     DISPLAYS1: OUT BIT_VECTOR(0 TO 6);
	     DISPLAYM0: OUT BIT_VECTOR(0 TO 6);
	     DISPLAYM1: OUT BIT_VECTOR(0 TO 6));
	       
END relogio_digital;

 
ARCHITECTURE arch OF relogio_digital IS

function to_std_logic(L: BIT) return std_ulogic is
begin
	if L = '1' then
		return('1');
	else
		return('0');
	end if;
end function to_std_logic; 

COMPONENT cont_mod10 IS
	PORT(CLEAR: IN BIT;
		 CLOCK: IN STD_LOGIC;
	    OUTPUT: OUT BIT_VECTOR(3 DOWNTO 0));
END COMPONENT;
COMPONENT cont_mod6 IS
	PORT(CLEAR: IN BIT;
		 CLOCK: IN STD_LOGIC;
	    OUTPUT: OUT BIT_VECTOR(3 DOWNTO 0));
END COMPONENT;	    
COMPONENT decodificador IS
	PORT (bcd : IN BIT_VECTOR(3 DOWNTO 0);
		  leds: OUT BIT_VECTOR(0 TO 6));
END COMPONENT;

SIGNAL SEG1_CLK, MIN0_CLK, MIN1_CLK: STD_LOGIC;
SIGNAL SEG0, SEG1, MIN0, MIN1: BIT_VECTOR(3 DOWNTO 0) := "0000";


BEGIN
	contador_segundos0: cont_mod10 PORT MAP(CLEAR, CLOCK, SEG0);
	
	SEG1_CLK <= to_std_logic(NOT(NOT SEG0(0) AND NOT SEG0(1) AND NOT SEG0(2) AND NOT SEG0(3)));
	
	contador_segundos1:  cont_mod6 PORT MAP(CLEAR, SEG1_CLK, SEG1);
	
	MIN0_CLK <= to_std_logic(NOT(NOT SEG1(0) AND NOT SEG1(1) AND NOT SEG1(2)));
	
	contador_minutos0: cont_mod10 PORT MAP(CLEAR, MIN0_CLK, MIN0);
	
	MIN1_CLK <= to_std_logic(NOT(NOT MIN0(0) AND NOT MIN0(1) AND NOT MIN0(2) AND NOT MIN0(3)));
	
	contador_minutos1: cont_mod6 PORT MAP(CLEAR, MIN1_CLK, MIN1);
	
	decodificadors0: decodificador PORT MAP(SEG0, DISPLAYS0);
	decodificadors1: decodificador PORT MAP(SEG1, DISPLAYS1);
	decodificadorm0: decodificador PORT MAP(MIN0, DISPLAYM0);
	decodificadorm1: decodificador PORT MAP(MIN1, DISPLAYM1);
	
END arch;
