library ieee;  
use ieee.std_logic_1164.all;

entity abhesaniyalab4 is 
port(EN:in std_logic;
A:in std_logic_vector(2 downto 0);
B:out std_logic_vector(7 downto 0)
);
end abhesaniyalab4;

architecture octaldecoder of abhesaniyalab4 is 
begin
 process(A,EN)
 begin
 if(EN='1')
	 then
	 case A is
	 when "000"=>B<="00000001";
	 when "001"=>B<="00000010";
	 when "010"=>B<="00000100";
	 when "011"=>B<="00001000";
	 when "100"=>B<="00010000";
	 when "101"=>B<="00100000";
	 when "110"=>B<="01000000";
	 when "111"=>B<="10000000";
	 end case;

 else
   B <= "00000000";

 end if;
end process;	 
end octaldecoder;