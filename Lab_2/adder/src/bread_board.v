`timescale 10ps / 1ps

module bread_board(); 
	reg [3:0] a;
	reg [3:0] b;
	reg s0, s1, cin;
	wire [3:0] s;
	wire cout;
	
	// module_name module_instance (inport, outport);
	
	// half_adder h1(a, b, s, cout);
	
	// full_adder f1(a, b, cin, s, cout);
	
	// comb_full_adder cf1(a, b, s0, s1, cin, s, cout);	   
	
	parallel_adder p1(a, b, s0, s1, cin, s, cout);
	
	initial
		begin
			// half adder simulation 	  
			// a = 0; b = 1;
			// #1 $display("a = %b, b = %b, s = %b, cout = %b", a, b, s, cout);  
			
			// full adder simulation 	  
			// a = 1; b = 0; cin = 1;
			// #1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);	   
			
			// comb_full adder simulation 	  
			// a = 1; b = 0; s0 = 1; s1 = 1; cin = 1;
			// #1 $display("a = %b, b = %b, s0 = $b, s1 = %b, cin = %b, s = %b, cout = %b", a, b, s0, s1, cin, s, cout);
			
			// parallel adder simulation 
			a = 4'b0000; b = 4'b0000; s0 = 0; s1 = 0; cin = 0;
			#1 $display("a = %b, b = %b, s0 = %b, s1 = %b, cin = %b, s = %b, cout = %b", a, b, s0, s1, cin, s, cout);	
			
			a = 4'b0010; b = 4'b0100; s0 = 0; s1 = 1; cin = 0;
			#1 $display("a = %b, b = %b, s0 = %b, s1 = %b, cin = %b, s = %b, cout = %b", a, b, s0, s1, cin, s, cout);
			
			a = 4'b1000; b = 4'b1001; s0 = 0; s1 = 0; cin = 1;
			#1 $display("a = %b, b = %b, s0 = %b, s1 = %b, cin = %b, s = %b, cout = %b", a, b, s0, s1, cin, s, cout);
			
			a = 4'b1100; b = 4'b1010; s0 = 0; s1 = 0; cin = 1;
			#1 $display("a = %b, b = %b, s0 = %b, s1 = %b, cin = %b, s = %b, cout = %b", a, b, s0, s1, cin, s, cout);
		end
		
endmodule