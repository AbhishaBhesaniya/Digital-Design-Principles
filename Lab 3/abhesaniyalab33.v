module abhesaniyalab33 (a,b,c,d,e,f,LR,LG,LA,LB,LC,LD,LE,LF);
input a,b,c,d,e,f;
output LR,LG,LA,LB,LC,LD,LE,LF;
assign LA = a;
assign LB = b;
assign LC = c;
assign LD = d;
assign LE = e;
assign LF = f;
assign LR = a & b & c & d & e & f;
assign LG = ~(LR);
endmodule
