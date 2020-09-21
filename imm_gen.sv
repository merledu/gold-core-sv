module imm_gen(input logic [31:0] inst_i,pc_i,output logic [31:0] s_o,sb_o,u_o,uj_o,i_o)
always_comb
begin 
case(instr_i,pc_i)
begin
if(instr_i[31]=0)	
	begin
	s_o[4:0]=instru_i[12:8];	#s_imm
	s_o[11:5]=instr_i[30:25];	#s_imm
	i_o[11:0]=instr_i[30:21];	#i_imm
	sb_o[4:1]=instr_i[12:9];	#sb_imm
	sb_o[11]=instr_i[8];		#sb_imm
	sb_o[10:5]=instr_i[30:25];	#sb_imm
	sb_o=sb_o+pc_i;			#sb_imm
	u_o[30:12]=instr_i[30:12];	#u_imm
	end
else	
	s_o[31:12]=21b'1;		#s_imm
	s_o[4:0]=instru_i[12:8];	#s_imm
	s_o[11:5]=instr_i[30:25];	#s_imm
	i_o[11:0]=instr_i[30:21];	#i_imm
	i_o[31:12]=21b'1;		#i_imm
	sb_o[31:12]=21b'1;		#sb_imm
	sb_o[4:1]=instr_i[12:9];	#sb_imm	
	sb_o[11]=instr_i[8];		#sb_imm
	sb_o[10:5]=instr_i[30:25];	#sb_imm
	sb_o=sb_o+pc_i;			#sb_imm
	u_o[31:12]=instr_i[31:12];	#u_imm