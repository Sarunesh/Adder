// Design Code
`timescale 1ns/1ns

module HA(output sum, carry, input a, b);
	xor X1(sum, a, b);
	and A1(carry, a, b);
endmodule

// Testbench Code

/* module tb_HA();
	reg a, b;
	wire s, cout;
	HA dut(.sum(s), .carry(cout), .a(a), .b(b));
	initial
		begin
			a=1'b0; b=1'b0;
			#10 a=1'b0; b=1'b1;
			#10 a=1'b1; b=1'b1;
			#10 a=1'b1; b=1'b0;
			#2 $finish;
		end
endmodule */