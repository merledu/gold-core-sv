module data_mem(
	input logic clk,
	input logic ren,
	input logic wen,
	input logic [7:0] addr,
	input logic [31:0] data_i,
	output logic [31:0] data_o
);

logic [31:0] mem[0:256];


always @(posedge clk) begin 
	if(wen) begin
		mem[addr] <= data_i;	
	end
end

always @(*) begin
	if(ren) begin
		data_o = mem[addr];	
	end
end

endmodule 
