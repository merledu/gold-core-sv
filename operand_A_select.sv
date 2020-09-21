module operand_A_select(input logic lui_i,jalr_i,jal_i,output logic (1:0) opasel_o);
always @(lui_i,jalr_i,jal_i)
begin
if(lui_i=1 && jalr=0 && jal=0) 		#LUI
	opasel_o=11;
else if(lui_i=0 && jalr=0 && jal=1)	#JAL
	opasel_o=10;
else if(lui_i=0 && jalr=1 && jal=0)	#JALR
	opasel_o=10;
else
	opasel_o=00;
end 
endmodule