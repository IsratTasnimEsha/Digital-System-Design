module paraller_adder_sim;
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	wire [3:0] s;
	wire cout;
	
	parallel_adder p(a, b, cin, s, cout);
	
	initial
		begin
			a = 4'b0000; b = 4'b0000; cin = 0;
			#1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);	   
			
			a = 4'b0100; b = 4'b0100; cin = 0;
			#1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
			
			a = 4'b1100; b = 4'b1100; cin = 1;
			#1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
			
			a = 4'b1111; b = 4'b1111; cin = 1;
			#1 $display("a = %b, b = %b, cin = %b, s = %b, cout = %b", a, b, cin, s, cout);
	
		end
endmodule