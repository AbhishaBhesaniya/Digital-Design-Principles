
library ieee;  
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;


entity abhesaniyalab5 is 
port(--EN:in std_logic;
 SW : in std_logic_vector(7 downto 0);
LED : out std_logic_vector(2 downto 0);
SLED0: out std_logic_vector(6 downto 0)
);
end abhesaniyalab5;

architecture magnitudecomparator of abhesaniyalab5 is 

signal A : std_logic_vector(3 downto 0) ; 
signal B : std_logic_vector(3 downto 0) ;
signal GT : std_logic;
signal EQ : std_logic;
signal LT : std_logic;

begin
		
	A <= SW(3 downto 0);
	B <= SW(7 downto 4);
	
	
		
	process(A,B)
     begin
		   	if (A = B) then
				
				EQ <= '1';
				LT <= '0'; 
				GT <= '0';
				SLED0<="0110000";	
				
				else if(A > B) then
				
				EQ <= '0';
				LT <= '0'; 
				GT <= '1';
				SLED0<="0100001";
				
				else if(A < B)	then
				
				EQ <= '0';
				LT <= '1'; 
				GT <= '0';
				SLED0<="1110001";
				
				else 
				
				EQ <= '0';
				LT <= '0'; 
				GT <= '0';	
				SLED0<="1111111";
				
				end if;
				end if;
				end if;	


				
LED(0) <= LT;
LED(1) <= EQ;
LED(2) <= GT;

--with A select SLED2 <= 
--                       "0000001" when "0000",
--                       "1001111" when "0001",
--							  "0010010" when "0010",
--							  "0000110" when "0011",
--							  "1001100" when "0100",
--							  "0100100" when "0101",
--							  "0100000" when "0110",
--							  "0001111" when "0111",
--							  "0000000" when "1000",
--							  "0001100" when "1001",
--							  "0001000" when "1010",
--							  "0000000" when "1011",
--							  "0110001" when "1100",
--							  "0000001" when "1101",
--							  "0110000" when "1110",
--							  "0111000" when "1111";
        
--case A is  
--				           
--		                 when "0000"=>SLED0<="1111110";	
--							  when "0001"=>SLED0<="0110000";	
--							  when "0010"=>SLED0<="1101101";	
--							  when "0011"=>SLED0<="1111001";	
--						     when "0100"=>SLED0<="0110011";	
--							  when "0101"=>SLED0<="1011011";	
--					        when "0110"=>SLED0<="1011111";
--							  when "0111"=>SLED0<="1110000";
--						     when "1000"=>SLED0<="1111111";
--					        when "1001"=>SLED0<="1110011";
--							  when "1010"=>SLED1<="0110000"; 
--							  when "1011"=>SLED1<="0110000"; 
--							  when "1100"=>SLED1<="0110000";
--							  when "1101"=>SLED1<="0110000"; 
--							  when "1110"=>SLED1<="0110000";
--							  when "1111"=>SLED1<="0110000";
--
--end case;
								
end process;				
				
end magnitudecomparator;