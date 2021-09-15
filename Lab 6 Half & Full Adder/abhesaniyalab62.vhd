
library ieee;  
use ieee.std_logic_1164.all;


entity abhesaniyalab62 is 
port(
 SW : in std_logic_vector(7 downto 0);
 FLIP : in std_logic;
 C : in std_logic;
LED : out std_logic_vector(4 downto 0);
SLED0: out std_logic_vector(6 downto 0);
SLED1: out std_logic_vector(6 downto 0);
SLED2: out std_logic_vector(6 downto 0);
SLED3: out std_logic_vector(6 downto 0);
SLED4: out std_logic_vector(6 downto 0)

);
end abhesaniyalab62;

architecture fulladder of abhesaniyalab62 is 

signal A : std_logic_vector(3 downto 0) ; 
signal B : std_logic_vector(7 downto 4) ;
signal SUM : std_logic_vector(3 downto 0) ;
signal CARRY : std_logic_vector(6 downto 4) ;
signal COUT : std_logic;
signal CIN : std_logic;


begin
		
	A <= SW(3 downto 0);
	B <= SW(7 downto 4);
	CIN <= C;
	
	SUM(0) <= (A(0) XOR B(4)) XOR CIN;
	CARRY(4) <= (A(0) AND B(4))  OR (CIN AND (A(0) XOR B(4)));
	
	SUM(1) <= (A(1) XOR B(5)) XOR CARRY(4);
	CARRY(5) <= (A(1) AND B(5))  OR (CARRY(4) AND (A(1) XOR B(5)));
	
	SUM(2) <= (A(2) XOR B(6)) XOR CARRY(5);
	CARRY(6) <= (A(2) AND B(6))  OR (CARRY(5) AND (A(2) XOR B(6)));
	
	SUM(3) <= (A(3) XOR B(7)) XOR CARRY(6);
	COUT <= (A(3) AND B(7))  OR (CARRY(6) AND (A(3) XOR B(7)));
	
	
	LED(0) <= SUM(0);
	LED(1) <= SUM(1);
	LED(2) <= SUM(2);
	LED(3) <= SUM(3);
	LED(4) <= COUT;
		
	
	process (SUM , CARRY, FLIP)
	begin
	  
	  if ( FLIP = '0') then
	     SLED4 <= "0100100";  
	   
			if (SUM(0) = '0') then
				 SLED0 <="0000001";
			else if (SUM(0) = '1') then
				 SLED0 <="1001111";		 
			end if;
			end if;
			
			if (SUM(1) = '0') then
			 SLED1 <="0000001";
			else if (SUM(1) = '1') then
			 SLED1 <="1001111";		 
			end if;
			end if;
			
			if (SUM(2) = '0') then
			 SLED2 <="0000001";
			else if (SUM(0) = '1') then
			 SLED2 <="1001111";		 
			end if;
			end if;
			
			if (SUM(3) = '0') then
			 SLED3 <="0000001";
			else if (SUM(3) = '1') then
			 SLED3 <="1001111";		 
			end if;
			end if;			
			
			else if(FLIP = '1')then 
			
			   SLED4 <="0110001";
				SLED1 <="1111111";
				SLED2 <="1111111";
				SLED3 <="1111111";
				if (COUT = '0') then
					 SLED0 <="0000001";
				else if (COUT = '1') then
					 SLED0 <="1001111";		 
				end if;
				end if;
									
								
		end if;
		end if;
		
	end process;
				  	

				
end fulladder;