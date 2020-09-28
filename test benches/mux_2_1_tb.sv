`timescale 1ns/1ns
module mux_2_1_tb;
	logic [31:0] in1_i;
	logic [31:0] in2_i;
	logic sel_i;
	logic [31:0] out_o;
	
	mux_2_1 dut(
		.in1_i(in1_i),
		.in2_i(in2_i),
		.sel_i(sel_i),
		.out_o(out_o)	
	);
	
	initial begin
		#5;
		in1_i <= 1;
		in2_i <= 2;
		sel_i <= 0;
		
		#5;
		in1_i <= 1;
		in2_i <= 2;
		sel_i <= 1;
	 end
endmodule
