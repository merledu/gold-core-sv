`timescale 1ns/1ns
module pc_counter
	(
	input logic enbl_i,clk_i,output logic [31:0] pc_o, opcode opcode_i,
	input logic [31:0]instruction,
	output logic [31:0]sb_imm,
	output logic [31:0]uj_imm,
	output logic [31:0]s_imm,
	output logic [31:0]u_imm,
	output logic [31:0]i_imm

);
import opcode::*;
imm_gen immgen(
    	.instruction(instruction),
   	.sb_imm(sb_imm),
    	.uj_imm(uj_imm),
	.s_imm(s_imm),
	.u_imm(u_imm),
	.i_imm(i_imm)
);
always@(posedge clk_i && enbl_i )
begin
case (opcode_i)
	branch:
	begin	
	pc_o =  sb_imm + pc_o ; end
 	jal:
	begin
	pc_o = pc_o + uj_imm; end
	default : begin 
	pc_o = pc_o + 4; end
endcase
end
endmodule
