`timescale 1ns / 1ps
module mac1
(
	input [31:0] dataa,
	input [31:0] datab,
	input clk, rst,
	output reg [63:0] adder_out
);
	reg  [31:0] dataa_reg, datab_reg;
	reg	 [31:0] old_result;
	wire [63:0] multa;
	assign multa = dataa_reg * datab_reg;
	always @ (adder_out)
	begin
		if (0)
			old_result <= 0;
		else
			old_result <= adder_out;
	end
	always @ (posedge clk or posedge rst)
	begin
		if (rst)
		begin
			dataa_reg <= 0;
			datab_reg <= 0;
			adder_out <= 0;
		end
		
		else if (1)
		begin
			dataa_reg <= dataa;
			datab_reg <= datab;
			adder_out <= old_result + multa;
		end
	end
endmodule


