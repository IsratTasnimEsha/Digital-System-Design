`timescale 10ps / 1ps

module half_adder_sim;
	reg a, b;
	wire s, c;
	
	half_adder h1(a, b, s, c);
	
	initial
		begin
			a = 0; b = 0;
			#1 $display("a = %b, b = %b, s = %b, c = %b", a, b, s, c);	
			
			a = 0; b = 1;
			#1 $display("a = %b, b = %b, s = %b, c = %b", a, b, s, c);
			
			a = 1; b = 0;
			#1 $display("a = %b, b = %b, s = %b, c = %b", a, b, s, c);
			
			a = 1; b = 1;
			#1 $display("a = %b, b = %b, s = %b, c = %b", a, b, s, c);
			
		end
endmodule