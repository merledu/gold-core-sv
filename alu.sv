module alu(input logic(31:0) A_i,B_i ,input logic (4:0) aluc_i , output logic(31:0) C_o , output logic branch_o);
always @(A_i , B_i)
begin
if(aluc_i == 5'b0) //Add ADDI

	C_o=A_i + B_i;

else if(aluc_i == 5'b00001) //SLL SLLI
	
	C_o=B_i << A_i;

else if(aluc_i == 5'b00010) //SLT SLTI

	if(A_i < B_i) begin
	C_o=1;
	end
	else begin
	C_o=0;
	end 

else if(aluc_i == 5'b00010 | aluc_i == 5'b10110 ) #SLTU,SLTUI,LTU
	if(A_i > B_i) begin
	C_o=1;
	end
	else begin
	C_o=0;
	end

else if(aluc_i == 5'b00100) //XOR XORI
	C_o=A_i ^ B_i;
	
else if(aluc_i == 5'b00101)	//SRL SRLI
	
	C_o=A_i >> B_i;
		
else if(aluc_i == 5'b00110)	//OR ORI
	
	C_o= A_i | B_i;

else if(aluc_i == 5'b00111)	//AND ANDI
	
	C_o= A_i & B_i;
	
else if(aluc_i == 5'b01000) //SUB 
	
	C_o=B_i - A_i;

else if(aluc_i == 5'b01101) //SRA SRAI

	C_o=A_i >>> B_i;

else if(aluc_i == 5'b01110)	//BEQ
	
	if(A_i == B_i) begin
	C_o=1;
	eend
	else begin 
	C_o=0;
	end

else if(aluc_i == 5'b01111)	//BNE

	if (A_i == B_i) begin 
	C_o=0;
	end
	else begin	
	C_o=1;
	end

else if(aluc_i == 5b'10100)	//BLT	
	
	if (A_i < B_i) begin
	C_o=1;
	end
	else begin
	C_o=0;
	end

else if(aluc_i == 5b'10001)	//BGE
	
	if ((A_i > B_i) | (A_i > B_i)) begin
	D_o=1;
	end
	else begin 
	D_o=0;
	end

else if(aluc_i == 5b'10011)	//BGEU
	
	if ((A_i > B_i) | (A_i == B_i)) begin
	C_o=1;	
	end
	else begin
	C_o=0;
	end

else if(aluc_i == 11111)	//JAL,JALR
	
	C_o = A_i

else if (aluc_i == 5'b10xxx && C_o==1)
	
	branch_o=1;
	else begin
	branch_o=0;
	end


else begin 

	C_o={Width{32'bxxxxx}};
end

end	

endmodule	
	
	
	


