module mux_4_1(
	input logic [31:0] in1_i,in2_i,in3_i,in4_i,
	input logic [1:0] sel_i,
	output logic [31:0] out_o
);

	always_comb
	begin
		if(sel_i == 2'b00) begin
			out_o = in1_i;
		end
		else if(sel_i == 2'b01) begin
			out_o = in2_i;		
		end
		
		else if(sel_i == 2'b10) begin
			out_o = in3_i;
		end
		
		else if(sel_i == 2'b11) begin
			out_o = in4_i;
		end		
		else begin
			out_o <= 32'b0;
		end
	end

endmodule 