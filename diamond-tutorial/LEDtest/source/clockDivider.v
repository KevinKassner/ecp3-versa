module clockDivider(clk, clkDivOut);

input clk;
output clkDivOut;
reg clkDivOut;
parameter period = 20000000; 
parameter halfPeriod = period/2; 
reg[31:0] countValue; 


always @(posedge clk) begin
			
			if (countValue == period -1 ) begin
				countValue = 0; 
				clkDivOut <= 0;
				end 
			else countValue = countValue +1;
		if (countValue == halfPeriod) clkDivOut <= 1; 
		end 
		 
endmodule