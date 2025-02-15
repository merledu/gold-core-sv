`timescale 1ns / 1ps
module imm_gen
(
    input logic [31:0] pc,
    input logic [31:0]instruction,
    output logic [31:0]i_imm,
    output logic [31:0]u_imm,
    output logic [31:0]s_imm,
    output logic [31:0]sb_imm,
    output logic [31:0]uj_imm
);
logic [11:0] I_type;
logic [19:0] U_type;
logic [11:0] S_type;
logic [12:0] SB_type;
logic [20:0] UJ_type;

always_comb
begin
	I_type = instruction[31:20];
	U_type = instruction[31:12];
	S_type = {instruction[31:25],instruction[11:7]};
	SB_type = {instruction[31],instruction[7],instruction[30:25],instruction[11:8],1'b0};
	UJ_type = {instruction[31],instruction[19:12],instruction[20],instruction[30:21],1'b0};

	u_imm = {U_type ,12'b0 };
	begin
	if(I_type[11]==1)
	i_imm = {20'hFFFFF,I_type};
	else 
	i_imm = {20'd0,I_type};
	end
	begin
	if(S_type[11]==1)
	s_imm = {20'hFFFFF,S_type};
	else 
	s_imm = {20'd0,S_type};
	end
	begin
	if(SB_type[12]==1)
	sb_imm = {19'h7FFFF,SB_type}+pc;
	else 
	sb_imm = {19'd0,SB_type}+pc;
	end
	begin
	if(UJ_type[20]==1)
	uj_imm = {11'h7FF ,UJ_type}+pc;
	else 
	uj_imm = {11'd0,UJ_type}+pc;
	end
end
endmodule