`timescale 1ns/1ns
module mux_4_1_tb;
	logic [31:0] in1_i;
	logic [31:0] in2_i;
	logic [31:0] in3_i;
	logic [31:0] in4_i;
	logic [1:0] sel_i;
	logic [31:0] out_o;
	
	mux_4_1 dut(
		.in1_i(in1_i),
		.in2_i(in2_i),
		.in3_i(in3_i),
		.in4_i(in4_i),
		.sel_i(sel_i),
		.out_o(out_o)	
	);
	
	initial begin
		#5;
		in1_i <= 1;
		in2_i <= 2;
		in3_i <= 3;
		in4_i <= 4;
		sel_i <= 2'b00;
		
		#5;
		in1_i <= 1;
		in2_i <= 2;
		in3_i <= 3;
		in4_i <= 4;
		sel_i <= 2'b01;

		#5;
		in1_i <= 1;
		in2_i <= 2;
		in3_i <= 3;
		in4_i <= 4;
		sel_i <= 2'b10;

		#5;
		in1_i <= 1;
		in2_i <= 2;
		in3_i <= 3;
		in4_i <= 4;
		sel_i <= 2'b11;
	end
endmodule 