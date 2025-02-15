module ALUop(input logic r_type_i,i_type_i,store_i,branch_i,load_i,jalr_i,jal_i,lui_i, output logic [2:0] aluop_o);
always_comb
begin
if (r_type_i==1) 
	aluop_o=3'b000;
else if (load_i==1) 
	aluop_o=3'b100;
else if (store_i==1) 
	aluop_o=3'b101;
else if (branch_i==1) 
	aluop_o=3'b010;
else if (i_type_i==1) 
	aluop_o=3'b001;
else if (jalr_i==1) 
	aluop_o=3'b011;
else if (jal_i==1) 
	aluop_o=3'b011;
else if (lui_i==1) 
	aluop_o=3'b110;
else begin 
	aluop_o=3'b111;
end
end

endmodule

	

