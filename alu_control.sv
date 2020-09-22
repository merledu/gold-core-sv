module alu_control(input logic [2:0] aluop_i,func3_i,input logic func7_i,output logic [4:0] aluc_o);
always_comb
begin 
if(aluop_i == 000 | aluop_i == 001 ) 
	begin 
	if(func3_i == 000 && func7_i==0) begin
	aluc_o = 5'b00000;
	end
	else if(func3_i == 000 && func7_i==1)	begin
	aluc_o = 5'b01000;
	end
	else if(func3_i == 001 && func7_i==0) begin
	aluc_o = 5'b00001;
	end
	else if(func3_i == 010 && func7_i==0) begin
	aluc_o = 5'b00010;
	end
	else if(func3_i == 011 && func7_i==0) begin
	aluc_o = 5'b00011;
	end
	else if(func3_i == 100 && func7_i==0) begin
	aluc_o = 5'b00100;
	end
	else if(func3_i == 110 && func7_i==0) begin
	aluc_o = 5'b00110;	
	end
	else if(func3_i == 111 && func7_i==0) begin
	aluc_o = 5'b00111;
	end
	else if(func3_i == 101 && func7_i==0) begin
	aluc_o = 5'b00101;
	end
	else if(func3_i == 101 && func7_i==1) begin
	aluc_o = 5'b01101;
	end
	else begin
	aluc_o = 5'bxxxxx;
	end
	end
else if(aluop_i == 3'b011) 
	begin	
	if(func3_i == 3'bxxx && func7_i == 1'bx)
	aluc_o = 5'b11111;
	end
else if(aluop_i == 100 | aluop_i == 101 | aluop_i == 110)
	begin
	if(func3_i == 3'bxxx && func7_i == 1'bx)
	aluc_o=5'b00000;
	end
else if(aluop_i == 010)
	begin
	if(func3_i == 3'b000 && func7_i == 1'bx)
	aluc_o=5'b10000;
	else if(func3_i == 3'b001 && func7_i == 1'bx)
	aluc_o=5'b10001;
	else if(func3_i == 3'b100 && func7_i == 1'bx)
	aluc_o=5'b10100;
	else if(func3_i == 3'b101 && func7_i == 1'bx)
	aluc_o=5'b10101;
	else if(func3_i == 3'b110 && func7_i == 1'bx)
	aluc_o=5'b10110;
	else if(func3_i == 3'b111 && func7_i == 1'bx)
	aluc_o=5'b10111;
	else
	aluc_o=5'bxxxxx;
	end
else 
	aluc_o=5'bxxxxx;
end

endmodule
		
	
