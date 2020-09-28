`timescale 1ns/1ns
module alu_control_tb;
	logic [2:0] aluop_i;
	logic [2:0] func3_i;
	logic func7_i;
	logic [4:0] aluc_o;

	alu_control dut(
		.aluop_i(aluop_i),
		.func3_i(func3_i),
		.func7_i(func7_i),
		.aluc_o(aluc_o)
	);

	initial begin
		#5;
		aluop_i <= 3'b000;
		func3_i <= 3'b010;
		func7_i <= 0;

		#5;
		aluop_i <= 3'b001;
		func3_i <= 3'b001;
		func7_i <= 1'bx;

		#5;
		aluop_i <= 3'b011;
		func3_i <= 3'bxxx;
		func7_i <= 1'bx;

		#5;
		aluop_i <= 3'b101;
		func3_i <= 3'bxxx;
		func7_i <= 1'bx;

		#5;
		aluop_i <= 3'b010;
		func3_i <= 3'b101;
		func7_i <= 1'bx;

		#5;
		aluop_i <= 3'b110;
		func3_i <= 3'bxxx;
		func7_i <= 1'bx;

	end


endmodule	
