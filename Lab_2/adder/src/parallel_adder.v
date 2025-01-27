module parallel_adder (a, b, s0, s1, cin, s, cout);	 
	input [3:0] a;
	input [3:0] b; 
	input s0;
	input s1;
	input cin;
	output [3:0] s;
	output cout;
	wire c1, c2, c3;  
	
	comb_full_adder cf0(a[0], b[0], s0, s1, cin, s[0], c1);
	comb_full_adder cf1(a[1], b[1], s0, s1, c1, s[1], c2);
	comb_full_adder cf2(a[2], b[2], s0, s1, c2, s[2], c3);
	comb_full_adder cf3(a[3], b[3], s0, s1, c3, s[3], cout);
	
endmodule				   