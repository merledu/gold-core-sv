module alu_control(input logic [2:0] aluop_i,func3_i,input logic func7_i,output logic [4:0] aluc_o);
always_comb
begin 
if(aluop_i == 3'b000 ) 
	begin 
	if(func3_i == 3'b000 && func7_i==0) begin
	aluc_o = 5'b00000;
	end
	else if(func3_i == 3'b000 && func7_i==1)	begin
	aluc_o = 5'b01000;
	end
	else if(func3_i == 3'b001 && func7_i==0) begin
	aluc_o = 5'b00001;
	end
	else if(func3_i == 3'b010 && func7_i==0) begin
	aluc_o = 5'b00010;
	end
	else if(func3_i == 3'b011 && func7_i==0) begin
	aluc_o = 5'b00011;
	end
	else if(func3_i == 3'b100 && func7_i==0) begin
	aluc_o = 5'b00100;
	end
	else if(func3_i == 3'b110 && func7_i==0) begin
	aluc_o = 5'b00110;	
	end
	else if(func3_i == 3'b111 && func7_i==0) begin
	aluc_o = 5'b00111;
	end
	else if(func3_i == 3'b101 && func7_i==0) begin
	aluc_o = 5'b00101;
	end
	else if(func3_i == 3'b101 && func7_i==1) begin
	aluc_o = 5'b01101;
	end
	else begin
	aluc_o = 5'bxxxxx;
	end
	end
else if(aluop_i == 3'b001 ) 
	begin 
	if(func3_i == 3'b000) begin
	aluc_o = 5'b00000;
	end
	else if(func3_i == 3'b000)	begin
	aluc_o = 5'b01000;
	end
	else if(func3_i == 3'b001) begin
	aluc_o = 5'b00001;
	end
	else if(func3_i == 3'b010) begin
	aluc_o = 5'b00010;
	end
	else if(func3_i == 3'b011) begin
	aluc_o = 5'b00011;
	end
	else if(func3_i == 3'b100) begin
	aluc_o = 5'b00100;
	end
	else if(func3_i == 3'b110) begin
	aluc_o = 5'b00110;	
	end
	else if(func3_i == 3'b111) begin
	aluc_o = 5'b00111;
	end
	else if(func3_i == 3'b101) begin
	aluc_o = 5'b00101;
	end
	else if(func3_i == 3'b101) begin
	aluc_o = 5'b01101;
	end
	else begin
	aluc_o = 5'bxxxxx;
	end
	end
else if(aluop_i == 3'b011) 
	begin	
	if(func3_i == 3'b000) begin
	aluc_o = 5'b11111;
	end
	else begin
	aluc_o = 5'b11111;	
	end
	end
else if(aluop_i == 3'b100 | aluop_i == 3'b101 | aluop_i == 3'b110)
	begin
	if(func3_i == 3'b000) begin 
	aluc_o=5'b00000;
	end
	else begin
	aluc_o=5'b00000;
	end
	end
else if(aluop_i == 3'b010)
	begin
	if(func3_i == 3'b000) begin
	aluc_o=5'b10000;
	end
	else if(func3_i == 3'b001) begin
	aluc_o=5'b10001;
	end	
	else if(func3_i == 3'b100) begin
	aluc_o=5'b10100;
	end
	else if(func3_i == 3'b101) begin
	aluc_o=5'b10101;
	end
	else if(func3_i == 3'b110) begin
	aluc_o=5'b10110;
	end
	else if(func3_i == 3'b111) begin
	aluc_o=5'b10111;
	end
	else begin
	aluc_o=5'bxxxxx;
	end
	end
else begin
	aluc_o=5'bxxxxx;
end
end

endmodule
		
	
