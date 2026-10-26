`default_nettype none
`timescale 1ps/1ps

module tb_module;
	reg tb_in;
	wire tb_out;
	top_module tb(
		.in(tb_in),
		.out(tb_out)
	);
	initial begin
	$dumpfile("sim_output.vcd");
	$dumpvars(0, tb_module);

	tb_in = 1'b0;
	#10;
	$finish;
	end
	always begin
	#1 tb_in = ~ tb_in;
	end
endmodule
