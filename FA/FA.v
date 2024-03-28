`timescale 1ns/1ns

// Design Code

module FA(output sum, cout, input a, b, cin);
	wire s1, c1, c2;
	HA h1(s1, c1, a, b);
	HA h2(sum, c2, s1, cin);
	or O1(cout, c1, c2);
endmodule

// Testbench Code

/* module tb_FA();
	reg a, b, cin;
	reg [2:0]ran;
	wire sum, cout;
	FA dut(.sum(sum), .cout(cout), .a(a), .b(b), .cin(cin));
	initial
		begin
		$monitor("ran=%d | a=%b | b=%b | cin=%b | sum=%b | cout=%b", ran, a, b, cin, sum, cout);
		repeat(10)
			begin
				ran=$random();
				a=ran[2]; b=ran[1]; cin=ran[0];
				#1;
			end		
		end
endmodule */