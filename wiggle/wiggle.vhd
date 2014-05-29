LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY wiggle IS
	PORT( 
		clk  : IN STD_LOGIC;
		rstn : IN STD_LOGIC;
		gpio : OUT INTEGER RANGE 0 TO 128
	);
END wiggle;

ARCHITECTURE wiggle_arch OF wiggle IS
	SIGNAL count : INTEGER RANGE 0 TO 128;
BEGIN
	PROCESS (clk, rstn)
	BEGIN
		IF rstn = '0' THEN
			count <= 0;
		ELSIF (clk'EVENT AND clk = '1') THEN
			count <= count + 1;
		END IF;
	END PROCESS;

	gpio <= count;
END wiggle_arch;
