library ieee;  
use ieee.std_logic_1164.all;

entity abhesaniyalab2 is 
port(x,y,z:in std_logic;
f:out std_logic
);
end abhesaniyalab2;

architecture Andgate of abhesaniyalab2 is 
begin
f <= x and y and z;
end Andgate;
