module comb_full_adder(a, b, s0, s1, cin, s, cout);
	input a, b, s1, s0, cin;
	output s, cout;	
	
	wire a, b, s1, s0, cin, s, cout, p1, p2, p3, q1, q2, q3, q4, p;
	
	assign p1 = ~s1;
	assign p2 = p1 & s0; 
	assign p3 = p2 & b;
	
	assign q1 = ~s0;
	assign q2 = q1 & s1; 
	assign q3 = ~b; 
	assign q4 = q2 & q3; 
	
	assign p = p3 | q4;
	
	full_adder f1(a, p, cin, s, cout);
		
endmodule