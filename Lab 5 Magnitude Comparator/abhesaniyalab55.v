module abhesaniyalab55 (SW,LED,SLED);

input [7:0]SW;
output[2:0]LED;
output[6:0]SLED;
 
//assign 
reg [3:0] A,B;
reg [2:0] LED;
reg [6:0]SLED; 

 always @(A or B) 
 begin 
       //{B,A} = SW; 
		 A = SW[3:0];
       B = SW[7:4];
		 
		 if (A < B)
			LED = 3'b001;
				
		 else if (A > B)
			LED = 3'b100;
			
		 else if (A == B)
			LED = 3'b010;
			
		else
			LED = 3'b000;
			
		end
always @(A or B) 
 begin
		if (A < B)
			SLED = 7'b1110001;
		 else if (A > B)
			SLED = 7'b0100001;
		 else if (A == B)
			SLED = 7'b0110000;
		else
			SLED = 7'b1111111;
		end
		
	
endmodule