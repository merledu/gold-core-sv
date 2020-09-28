`timescale 1ns/1ns
module jalr_target_tb;
	logic [31:0] a_i;
	logic [31:0] b_i;
	logic [31:0] jalrt_o;
	
	jalr_target dut(
		.a_i(a_i),
		.b_i(b_i),
		.jalrt_o(jalrt_o)
	);
	
	initial begin 
		#5;
		a_i <= 2;
		b_i <= 1;
		
		#5;
		a_i <= 1;
		b_i <= 4;
	end
endmodule
