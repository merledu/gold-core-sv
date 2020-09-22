module next_pc_select(input logic b_i,j_i,jr_i, output logic [1:0] npc_o);
always_comb
begin
if(b_i == 0 && j_i == 0 && jr_i == 1) 		//JALR
	npc_o=11;
else if(b_i == 0 && j_i == 1 && jr_i == 0)	//JAL
	npc_o=10;
else if(b_i == 1 && j_i == 0 && jr_i == 0)	//BRANCH
	npc_o = 2'b01;
else
	npc_o = 2'b00;
end
endmodule
	
			