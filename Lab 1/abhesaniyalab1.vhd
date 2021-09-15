library ieee;  
use ieee.std_logic_1164.all;

entity abhesaniyalab1 is 
port(x,y,z:in std_logic;
f:out std_logic
);
end abhesaniyalab1;

architecture orgate of abhesaniyalab1 is 
begin
f <= x or y or z;
end orgate;
