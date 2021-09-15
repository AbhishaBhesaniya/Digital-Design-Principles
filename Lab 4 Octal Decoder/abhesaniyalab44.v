module abhesaniyalab44 (A,B,EN);

input [2:0]A;
input EN;
output[7:0]B;
reg [7:0] B; 
//assign 
 always @(A or EN) 
 begin 
		 if(EN == 1)
		 begin
	       B = (A == 3'B000) ? 8'B00000001:
				  (A == 3'B001) ? 8'B00000010:
				  (A == 3'B010) ? 8'B00000100:
				  (A == 3'B011) ? 8'B00001000:
				  (A == 3'B100) ? 8'B00010000:
				  (A == 3'B101) ? 8'B00100000:
				  (A == 3'B110) ? 8'B01000000:
				  (A == 3'B111) ? 8'B10000000:
				  8'B00000000;
		 end		  
       else  B = 8'B00000000;
		 
end				
endmodule