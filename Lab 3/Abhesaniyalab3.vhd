library ieee;  
use ieee.std_logic_1164.all;

entity abhesaniyalab3 is 
port(a,b,c,d,e,f:in std_logic;
LR,LG,LA,LB,LC,LD,LE,LF:out std_logic
);
end abhesaniyalab3;

architecture parkingindicator of abhesaniyalab3 is 
begin
LA <= a;
LB <= b;
LC <= c;
LD <= d;
LE <= e;
LF <= f;
LR <= a and b and c and d and e and f;
LG <= not (a and b and c and d and e and f);
end parkingindicator;

