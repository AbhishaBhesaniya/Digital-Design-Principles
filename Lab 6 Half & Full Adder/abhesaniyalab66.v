module abhesaniyalab66 (SW,FLIP,LED,SLED0,SLED1,SLED2,SLED3, SLED4);

input [7:0]SW;
input FLIP;
output[7:0]LED;
output[6:0]SLED0;
output[6:0]SLED1;
output[6:0]SLED2;
output[6:0]SLED3;
output[6:0]SLED4;

reg [7:0]LED;
reg [6:0]SLED0;
reg [6:0]SLED1;
reg [6:0]SLED2;
reg [6:0]SLED3;
reg [6:0]SLED4; 
//assign 
wire [3:0] A = SW[3:0];
wire [7:4] B = SW[7:4];
reg [3:0] SUM;
reg [7:4]CARRY;
 

always @(A or B or FLIP)
begin

			SUM[0] = A[0] ^ B[4]; 
			SUM[1] = A[1] ^ B[5];
			SUM[2] = A[2] ^ B[6];
			SUM[3] = A[3] ^ B[7];

			CARRY[4] = A[0] & B[4];
			CARRY[5] = A[1] & B[5];
			CARRY[6] = A[2] & B[6];
			CARRY[7] = A[3] & B[7];

 LED[3:0] = SUM;
 LED[7:4] = CARRY;
   
	 if (FLIP == 0)
		 begin
			 SLED4 = 7'b0100100;
			 if (SUM[0] == 0)
				SLED0 = 7'b0000001;
			 else if (SUM[0] == 1)
				SLED0 = 7'b1001111;
				 
			 if (SUM[1] == 0)
				SLED1 = 7'b0000001;
			 else if (SUM[1] == 1)
				SLED1 = 7'b1001111;
			 			 
			 if (SUM[2] == 0)
				SLED2 = 7'b0000001;
			 else if (SUM[2] == 1)
				SLED2 = 7'b1001111;
			 			 
			 if (SUM[3] == 0)
				SLED3 = 7'b0000001;
			 else if (SUM[3] == 1)
				SLED3 = 7'b1001111;
		 end
		 
	  else if (FLIP == 1)
	  begin
	  
			 SLED4 = 7'b0110001;
			 if (CARRY[4] == 0)
				SLED0 = 7'b0000001;
			 else if (CARRY[4] == 1)
				SLED0 = 7'b1001111;
					 
			 if (CARRY[5] == 0)
				SLED1 = 7'b0000001;
			 else if (CARRY[5] == 1)
				SLED1 = 7'b1001111;
					
			 if (CARRY[6] == 0)
				SLED2 = 7'b0000001;
			 else if (CARRY[6] == 1)
				SLED2 = 7'b1001111;
					 
			 if (CARRY[7] == 0)
				SLED3 = 7'b0000001;
			 else if (CARRY[7] == 1)
				SLED3 = 7'b1001111;
   	 
    end	

end

endmodule