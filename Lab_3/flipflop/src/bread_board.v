`timescale 1ps / 1ps

module bread_board ();
    reg strt_clk;
    reg clk;
    reg [3:0] in;
    wire [3:0] Q;
	wire [3:0] Q_bar;
	reg rst;  
	reg en;
	
	assign rst = 1;	
	assign en = 0;
	
	register r(in, Q, Q_bar, clk, rst, en);

    always @(posedge strt_clk) begin
        while (strt_clk) begin
            #1 clk = 0;
            #1 clk = 1;
        end
    end

    initial begin
        strt_clk = 0;
        #1 strt_clk = 1;

        #3 in = 4'b1010;
        #3 in = 4'b1011;

        #4 strt_clk = 0;
    end
endmodule