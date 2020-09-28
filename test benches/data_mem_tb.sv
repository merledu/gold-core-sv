`timescale 1ns/1ns
module data_mem_tb;
	logic clk;
	logic ren;
	logic wen;
	logic [19:0] addr;
	logic [31:0] data_i;
	logic [31:0] data_o;

	data_mem dut(
		.ren(ren),
		.wen(wen),
		.addr(addr),
		.data_i(data_i),
		.data_o(data_o),
		.clk(clk)
	);

	initial begin
		#10;
		addr <= 0;
		ren <= 1;	
		wen <= 0;
		
		
		#10;
		data_i <= 32'b11;
		addr <= 4;
		wen <= 1;
		ren <= 0;
		
		#10;
		addr <= 4;
		ren <= 1;
		wen <= 0;
		
		#10;
		data_i <= 32'b1111;
		addr <= 8;
		ren <= 0;
		wen <= 1;

		#10;
		addr <= 8;
		ren <= 1;
		wen <= 0;
end	
	always begin
		clk <= 1;	#5;
		clk <= 0;	#5;
	end 

endmodule
