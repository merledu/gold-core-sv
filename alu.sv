module alu(input logic[31:0] A_i,B_i ,input logic [4:0] aluc_i , output logic[31:0] C_o , output logic branch_o,output logic [1:0] branch2_o);
always_comb
begin
if(aluc_i == 5'b0) begin //Add ADDI
assign branch2_o = aluc_i [4:3];
	C_o=A_i + B_i;
end
else if(aluc_i == 5'b00001) begin//SLL SLLI
	
	C_o=B_i << A_i;
end
else if(aluc_i == 5'b00010) //SLT SLTI
begin
	if(A_i < B_i) begin
	C_o=1;
	end
	else begin
	C_o=0;
	end 
end
else if(aluc_i == 5'b00010 | aluc_i == 5'b10110 ) begin//SLTU,SLTUI,LTU
	if(A_i > B_i) begin
	C_o=1;
	end
	else begin
	C_o=0;
	end
end
else if(aluc_i == 5'b00100) begin //XOR XORI
	C_o=A_i ^ B_i;
end
else if(aluc_i == 5'b00101)	//SRL SRLI
	begin
	C_o=A_i >> B_i;
	end	
else if(aluc_i == 5'b00110)	//OR ORI
	begin
	C_o= A_i | B_i;
	end
else if(aluc_i == 5'b00111)	//AND ANDI
	begin
	C_o= A_i & B_i;
	end
else if(aluc_i == 5'b01000) //SUB 
	begin
	C_o=B_i - A_i;
	end
else if(aluc_i == 5'b01101) //SRA SRAI
	begin	
	C_o=A_i >>> B_i;
	end
else if(aluc_i == 5'b01110)	//BEQ
	begin
	if(A_i == B_i) begin
	C_o=1;
	end
	else begin 
	C_o=0;
	end
	end
else if(aluc_i == 5'b01111)	//BNE
	begin
	if (A_i == B_i) begin 
	C_o=0;
	end
	else begin	
	C_o=1;
	end
	end
else if(aluc_i == 5'b10100)	//BLT	
	begin
	if (A_i < B_i) begin
	C_o=1;
	end
	else begin
	C_o=0;
	end
	end
else if(aluc_i == 5'b10001)	//BGE
	begin
	if ((A_i > B_i) | (A_i > B_i)) begin
	C_o=1;
	end
	else begin 
	C_o=0;
	end
	end
else if(aluc_i == 5'b10011)	//BGEU
	begin
	if ((A_i > B_i) | (A_i == B_i)) begin
	C_o=1;	
	end
	else begin
	C_o=0;
	end
	end
else if(aluc_i == 5'b11111)	//JAL,JALR
	begin
	C_o = A_i;
	end
else begin 
	C_o = 32'bxxxxx;
end
assign branch_o = ((branch2_o == 2'b10) && (C_o==1))? 1'b1: 1'b0; 

end





endmodule	
	
	
	


