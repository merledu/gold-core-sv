`timescale 1ns/1ns
module pc_counter_tb;
import opcode ::* ;
	logic enbl_i;
	logic clk_i;
	logic [31:0] pc_o;
	opcode opcode_i;
    	logic [31:0]instruction;
    	logic [31:0]sb_imm;
    	logic [31:0]uj_imm;
	logic [31:0]s_imm;
    	logic [31:0]u_imm;
	logic [31:0]i_imm;
	
	pc_counter dut(
	.enbl_i(enbl_i),
	.clk_i(clk_i),
	.pc_o(pc_o),
	.opcode_i (opcode_i),
	.instruction(instruction),
	.sb_imm(sb_imm),
	.uj_imm(uj_imm),
	.s_imm(s_imm),
	.u_imm(u_imm),
	.i_imm(i_imm)
	);

	always begin
	#5;	clk_i=1;
	#5;	clk_i=0;
	end
	initial begin
	enbl_i = 0;
	repeat (40) #5 enbl_i = ~enbl_i; end
	initial begin
	opcode_i = opcode_i.first();
	repeat(opcode_i.num()) #20 opcode_i=opcode_i.next(); end
	initial begin
	instruction = 32'h00345678;
	#20 instruction = 32'h00345478;	
	#20 instruction = 32'h00345679;
	#20 instruction = 32'h03345679;
	#20 instruction = 32'h00325679;
	#20 instruction = 32'h10345679;
	#20 instruction = 32'h02345679;
end
endmodule
