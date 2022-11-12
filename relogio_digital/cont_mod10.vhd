LIBRARY ieee;
USE ieee. std_logic_1164.all;
 
ENTITY cont_mod10 IS
	PORT(CLEAR: IN BIT;
		 CLOCK: IN STD_LOGIC;
	       SEG: OUT BIT_VECTOR(3 DOWNTO 0));
END cont_mod10;

 
ARCHITECTURE arch OF cont_mod10 IS

COMPONENT JK_FF IS
	PORT(J,K,CLEAR: IN BIT;
	         CLOCK: IN STD_LOGIC;
	         Q, QB: OUT BIT);
END COMPONENT;

SIGNAL Q: BIT_VECTOR(3 DOWNTO 0) := "0000";
SIGNAL QB: BIT_VECTOR(3 DOWNTO 0) := "1111";

BEGIN
	FFS0: JK_FF PORT MAP(QB(3) OR (QB(1) AND QB(2)), '1'                   , CLEAR, CLOCK, Q(0), QB(0));
	FFS1: JK_FF PORT MAP(Q(0) AND QB(3)            , Q(0) OR Q(3)          , CLEAR, CLOCK, Q(1), QB(1));
	FFS2: JK_FF PORT MAP(Q(0)  AND Q(1) AND QB(3)  ,(Q(0) AND Q(1)) OR Q(3), CLEAR, CLOCK, Q(2), QB(2));
	FFS3: JK_FF PORT MAP(Q(0)  AND Q(1) AND Q(2)   , Q(0) OR Q(1) OR Q(2)  , CLEAR, CLOCK, Q(3), QB(3));
	
	SEG(0) <= Q(0);
	SEG(1) <= Q(1);
	SEG(2) <= Q(2);
	SEG(3) <= Q(3);
END arch;