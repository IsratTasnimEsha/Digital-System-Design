module register (in, Q, Q_bar, clk, rst, en);

    input [3:0] in;      
    input rst;  
	input en;
	input clk;
    output [3:0] Q;      
    output [3:0] Q_bar;  

    reg [3:0] temp;    
	
    always @(posedge clk)	 
		if (!en) begin
            temp = 4'bzzzz;
		end
        else if (rst) begin
            temp = 4'b0000;  
        end
		else begin
            temp = in;      
        end

    assign Q = temp;
    assign Q_bar = ~temp;	
endmodule