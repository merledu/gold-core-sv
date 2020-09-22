module type_decode(input logic [6:0] opcode_i, output logic r_type_o,i_type_o,store_o,branch_o, load_o,jalr_o, jal_o, lui_o);
always_comb
begin 
if (opcode_i== 0110011)		//R_TYPE
	r_type_o=1;
else if(opcode_i==0000011)	// LOAD	
	load_o=1;
else if(opcode_i==0100011)	// STORE
	store_o=1;
else if(opcode_i==1100011)	// BRANCH
	branch_o=1;
else if(opcode_i==0010011)	// I_TYPE
	i_type_o=1;
else if(opcode_i==1100111)	// JALR
	jalr_o=1;
else if(opcode_i==1101111)	// JAL
	jal_o=1;
else if(opcode_i==0110111)	// LUI
	lui_o=1;
else begin 
	r_type_o=0;
	load_o=0;
	store_o=0;
	branch_o=0;
	i_type_o=0;
	jalr_o=0;
	jal_o=0;
	lui_o=0;
end
end
endmodule
