LIBRARY ieee;
USE ieee. std_logic_1164.all;
 
ENTITY JK_FF IS
	PORT(J,K,CLEAR: IN BIT;
		      CLOCK: IN STD_LOGIC;
		      Q, QB: OUT BIT);
END JK_FF;
 
ARCHITECTURE arch OF JK_FF IS
BEGIN
	PROCESS (CLOCK)
		VARIABLE AUX: BIT;
	BEGIN
		IF (CLEAR = '0') THEN
			AUX := '0';
		ELSIF (CLOCK = '0' AND CLOCK'EVENT) THEN
			IF (J = '0' AND K = '0') THEN
				AUX:= AUX;
			ELSIF (J = '1' AND K = '1') THEN
				AUX:= NOT AUX;
			ELSIF (J = '0' AND K = '1') THEN
				AUX := '0';
			ELSE
				AUX := '1';
			END IF;
		END IF;
		Q <= AUX;
		QB <= NOT AUX;
	END PROCESS;
END arch;
