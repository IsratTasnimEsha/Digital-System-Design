module half_adder (a, b, s, c);
	
	input a, b;
	output s, c;
	wire a, b, s, c;
	
	assign s = a ^ b;
	assign c = a & b;
	
endmodule