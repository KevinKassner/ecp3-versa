`timescale 1 ns / 1 ns

module testbench;

	parameter CLOCK_CYCLE = 10;
	wire [3:0] count2;
	wire [7:0] count3;

	reg clk, reset, direction; 


 topcount topcount_inst(  .clk(clk), .reset(reset),.direction(direction),  .count3t(count3), .count2t(count2));
	
	initial begin
		clk = 1'b1;
		reset = 1'b0;
		direction = 1'b1;
	end

	// 100MHz clock generation 
	always
		#(CLOCK_CYCLE/2.0) clk = ~clk;

	initial begin		
		#(10*CLOCK_CYCLE);
		#(0.3*CLOCK_CYCLE) reset = 1'b1;
		#(10*CLOCK_CYCLE) reset = 1'b0;	
		
		
		#(50*CLOCK_CYCLE) $finish;
	end
	
endmodule