
library ieee;  
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity abhesaniyalab8 is 
port(
EN : in std_logic;
CLEAR : in std_logic;
CLOCK : in std_logic;
R: out std_logic_vector(3 downto 0);
J: out std_logic_vector(3 downto 0);
HEX0: out std_logic_vector(6 downto 0);
HEX1: out std_logic_vector(6 downto 0)

);
end abhesaniyalab8;

architecture COUNTER of abhesaniyalab8 is 

signal RING : std_logic_vector(3 downto 0) ;
signal JHON : std_logic_vector(3 downto 0) ;

begin
   	
		
	process (CLOCK, EN, CLEAR)
	begin
	
	if (EN ='1')	
	then
						if CLEAR = '0' then
						   RING <= "0001";
							JHON <= "0000";
						
					   elsif Rising_edge(CLOCK) then	
						      RING(1) <= RING(0);
								RING(2) <= RING(1);
								RING(3) <= RING(2);
								RING(0) <= RING(3);
								JHON(1) <= JHON(0);
								JHON(2) <= JHON(1);
								JHON(3) <= JHON(2);
								JHON(0) <= NOT JHON(3);
						
						
								R <= RING;
								J <= JHON;
								
								case RING is
								
								   when "0001" => HEX0 <= "0000001";
									when "0010" => HEX0 <= "1001111";
									when "0100" => HEX0 <= "0010010";
									when "1000" => HEX0 <= "0000110";
									when others => HEX0 <= "1111111";
																		 
								end case;
								
								
								case JHON is
								
								   when "0000" => HEX1 <= "0000001";
									when "0001" => HEX1 <= "1001111";
									when "0011" => HEX1 <= "0010010";
									when "0111" => HEX1 <= "0000110";
									when "1111" => HEX1 <= "1001100";
									when "1110" => HEX1 <= "0100100";
									when "1100" => HEX1 <= "0100000";
									when "1000" => HEX1 <= "0001111";
									when others => HEX1 <= "1111111";
									 
								end case;
					
								
						 end if;
						 
						 else 
						      RING <= "0001";
							   JHON <= "0000";
						      HEX0 <= "1111111";
                    	   HEX1 <= "1111111";
									

  	  
	end if;
	end process;
				  	

				
end COUNTER ;