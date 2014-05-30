module topcount 
(input  clk, reset,direction, output reg seg_1,seg_2,seg_3,seg_4,seg_5,seg_6,seg_7,seg_8,
			seg_9, seg_10,seg_11,seg_12,seg_13,seg_14,seg_15,seg_16, output LOCK, output [7:0]count3t, output [3:0]count2t
	);



	wire [3:0] countt;
	wire [3:0] count2t;
	wire [7:0] count3t;
	reg directionR;
	wire CLKOP, clk_1Hz,CLKOK;
	
	wire seg1, seg2, seg3, seg4, seg5, seg6, seg7, 
	seg8,seg9, seg10,seg11,seg12,seg13,seg14,seg15,seg16;
	

	my_pll my_pll_inst (.CLK(clk), .CLKOK(CLKOK), .CLKOP(CLKOP),.LOCK(LOCK));
	
	clockDivider clockDivider_inst( CLKOK, clk_1Hz);
	
	count8 counter1 (CLKOP,reset, directionR,count3t);
	count4 counter2 (clk,directionR,reset,count2t);
	count4 counter3 (clk_1Hz,directionR,reset,countt);
	
	
	LEDtest my_LEDtest( direction, seg1, seg2, seg3, seg4, seg5, seg6, seg7, 
	seg8,seg9, seg10,seg11,seg12,seg13,seg14,seg15,seg16, countt);
	 
	
	always @(posedge clk_1Hz )begin
		directionR = direction;
	 seg_1 = seg1;
	 seg_2 = seg2;
	 seg_3 = seg3;
	 seg_4 = seg4;
	 seg_5 = seg5;
	 seg_6 = seg6;
	 seg_7 = seg7;
	 seg_8 = seg8;
	 seg_9 = seg9;
	 seg_10 = seg10;
	 seg_11 = seg11;
	 seg_12 = seg12;
	 seg_13 = seg13;
	 seg_14 = seg14;
	 seg_15 = seg15;
	 seg_16 = seg16;
end

	
endmodule


