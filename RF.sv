module RF(input logic regwrite_i,clk_i,reset_i,
input logic [4:0]rs1_i,rs2_i,rd_i,
input logic[31:0]wd_i,
output logic[31:0]operandA_o,operandB_o,
reg [31:0] registers [0:31] );
begin 
assign operandA_o = registers[rs1_i];
assign operandAB_o = registers[rs2_i];

initial begin
register[5'b0]=32'b0;
end
begin 
always @(posedge clk_i)
if (reset_i == 0)
	begin
	if( rd_i !== 0)
	begin
		if (regwrite_i !== 0) 
		registers[rd_i] <= wd_i;
		else
		registers[rd_i] <= wd_i;
	end
	else
	registers[rd_i] <= 32'b0;
	end
else
registers[rd_i] <= 32'b0;
end
end
endmodule