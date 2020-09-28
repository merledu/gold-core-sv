module intr_mem(
	input logic clk,
	input logic ren,
	input logic wen,
	input logic [19:0] addr,
	input logic [31:0] data_i,
	output logic [31:0] data_o
);

logic [31:0] mem[0:1048576];


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