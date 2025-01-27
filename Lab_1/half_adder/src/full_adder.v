module full_adder (a, b, cin, s, cout);
	input a, b, cin;
	output s, cout;
	wire a, b, cin, s, cout, s1, c1, c2;
	
	half_adder h1(a, b, s1, c1);	
	half_adder h2(s1, cin, s, c2);	  
	
	assign cout = c2 | c1;
endmodule