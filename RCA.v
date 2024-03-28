// n-bit Ripple Carry Adder

`default_nettype wire
`timescale 1ns/1ns

// Design Code
module RCA
	// Assigning the size of RCA using parameter
	#(parameter integer SIZE=4)
	(output [SIZE:1]s, input [SIZE:1] a, b);
	
	wire [SIZE:0]w;
	assign w[0]=0; // By default
	// Instantiate the Full Adder modules using "generate for"
	genvar i;
	generate
		for(i=1;i<=SIZE;i=i+1)
		begin: full_adder_inst
			FA FA_inst (.a(a[i]), .b(b[i]), .cin(w[i-1]), .sum(s[i]), .cout(w[i]));
		end
	endgenerate
endmodule

// Testbench code

module RCA_tb();
	 parameter integer SIZE=5;
	 wire [SIZE:1]s; 
    reg [SIZE:1]a, b;
	 RCA #(SIZE) dut(.s(s), .a(a), .b(b));
    initial
    begin
//        $monitor($time, "s=%b | a=%b | b=%b", s, a, b);
        repeat(10)
		begin
		  a=$random; b=$random;
		  #10;
		end
		$finish;
    end
    always @ (s,a,b)
        $display($time, "s=%b | a=%b | b=%b", s, a, b);
endmodule