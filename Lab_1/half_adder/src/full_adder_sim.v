 module full_adder_sim;
	 reg a, b, cin;
	 wire s, cout;
	 
	 full_adder f(a, b, cin, s, cout);
	 
	 initial
		 begin
			 a=0; b=0; cin=0;
			 #1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);  
			 
			 a=0; b=0; cin=1;
			 #1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
			 
			 a=0; b=1; cin=0;
			 #1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
			 
			 a=0; b=1; cin=1;
			 #1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
			 
			 a=1; b=0; cin=0;
			 #1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
			 
			 a=1; b=0; cin=1;
			 #1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
			 
			 a=1; b=1; cin=0;
			 #1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
			 
			 a=1; b=1; cin=1;
			 #1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
		end
endmodule