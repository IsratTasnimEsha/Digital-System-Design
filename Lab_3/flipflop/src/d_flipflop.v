module d_flipflop ( D , Q, clk ,Q_bar);

	input D;
	wire D;
	input clk;
	wire clk;
	output Q;
	reg Q;
	output Q_bar;
	wire Q_bar;
	
	always @(posedge clk)	 
		begin
			Q = D;
		end	
		
	assign Q_bar = ~Q;


endmodule