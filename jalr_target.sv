module jalr_target(input logic (31:0) a_i,b_i,output logic (31:0) jalrt_o);
always @(a_i,b_i)
begin 
jalt_o=(a_i+b_i) & 32'hfffffffe
end 
endmodule 