module LEDtest ( input direction, output seg_1,seg_2,seg_3,seg_4,seg_5,seg_6,seg_7,seg_8,seg_9, seg_10,seg_11,seg_12,seg_13,seg_14,seg_15,seg_16,
		
		input [3:0] count );
	
	
	reg seg1, seg2, seg3, seg4, seg5, seg6, seg7, seg8,seg9, seg10,seg11,seg12,seg13,seg14,seg15,seg16;
	
		


	always @(*) begin

		if(~direction) begin

		case(count)
			4'b0000:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b0 ; end
			4'b0001:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b0 ;seg16 =1'b1 ; end
			4'b0010:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b0; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b0011:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b0;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b0100:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b0 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b0101:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b0; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b0110:begin seg9 = 1'b1;seg10 = 1'b0; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b0111:begin seg9 = 1'b0;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b1000:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b0 ; end
			4'b1001:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b0 ;seg16 =1'b1 ; end
			4'b1010:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b0; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b1011:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b0;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b1100:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b0 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b1101:begin seg9 = 1'b1;seg10 = 1'b1; seg11 =1'b0; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b1110:begin seg9 = 1'b1;seg10 = 1'b0; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b1 ; end
			4'b1111:begin seg9 = 1'b0;seg10 = 1'b1; seg11 =1'b1; seg12 =1'b1 ;seg13 = 1'b1;seg14 = 1'b1; seg15 = 1'b1 ;seg16 =1'b1 ; end
			
			endcase
			end

			
		case(count)  			4'b0000:begin seg1 = 1'b0;seg2 = 1'b0; seg3 =1'b0; seg4 =1'b0 ;seg5 = 1'b0;seg6 = 1'b0; seg7 = 1'b1 ;seg8 =1'b1 ; end
			4'b0001:begin seg1 =1'b1 ;seg2 =1'b0 ; seg3 =1'b0; seg4 =1'b1;seg5 =1'b1;seg6 =1'b1; seg7 =1'b1;seg8 =1'b1; end
			4'b0010:begin seg1 =1'b0;seg2 =1'b0; seg3 =1'b1; seg4 =1'b0;seg5 =1'b0;seg6 =1'b1; seg7 =1'b0;seg8 =1'b0; end
			4'b0011:begin seg1 =1'b0;seg2 =1'b0; seg3 =1'b0; seg4 =1'b0;seg5 =1'b1 ;seg6 =1'b1; seg7 =1'b0;seg8 =1'b0; end
			4'b0100:begin seg1 =1'b1;seg2 =1'b0; seg3 =1'b0; seg4 =1'b1;seg5 =1'b1;seg6 =1'b0; seg7 =1'b0;seg8 =1'b0; end
			4'b0101:begin seg1 =1'b0;seg2 =1'b1; seg3 =1'b0; seg4 =1'b0;seg5 =1'b1;seg6 =1'b0; seg7 =1'b0;seg8 =1'b0; end
			4'b0110:begin seg1 =1'b1;seg2 =1'b1; seg3 =1'b0; seg4 =1'b0;seg5 =1'b0;seg6 =1'b0; seg7 =1'b0;seg8 =1'b0; end
			4'b0111:begin seg1 =1'b0;seg2 =1'b0; seg3 =1'b0; seg4 =1'b1 ;seg5 = 1'b1;seg6 =1'b1 ; seg7 =1'b1;seg8 =1'b1; end
			4'b1000:begin seg1 =1'b0;seg2 =1'b0; seg3 =1'b0; seg4 =1'b0;seg5 =1'b0;seg6 =1'b0; seg7 =1'b0;seg8 =1'b0; end
			4'b1001:begin seg1 =1'b0;seg2 =1'b0; seg3 =1'b0; seg4 =1'b1;seg5 =1'b1;seg6 =1'b0; seg7 =1'b0;seg8 =1'b0; end
			4'b1010:begin seg1 =1'b0;seg2 =1'b0; seg3 =1'b0; seg4 =1'b1;seg5 =1'b0;seg6 =1'b0; seg7 =1'b0;seg8 =1'b0; end
			4'b1011:begin seg1 =1'b0;seg2 =1'b0; seg3 =1'b0; seg4 =1'b0;seg5 =1'b0;seg6 =1'b0; seg7 =1'b0;seg8 =1'b0; end
			4'b1100:begin seg1 =1'b0;seg2 =1'b1; seg3 = 1'b1; seg4 =1'b0;seg5 =1'b0;seg6 =1'b0; seg7 =1'b1;seg8 =1'b1; end
			4'b1101:begin seg1 =1'b0;seg2 =1'b0; seg3 =1'b0; seg4 =1'b0;seg5 =1'b0;seg6 =1'b0; seg7 =1'b1;seg8 =1'b1; end
			4'b1110:begin seg1 =1'b0;seg2 =1'b1; seg3 =1'b1; seg4 =1'b0;seg5 =1'b0;seg6 =1'b0; seg7 =1'b0;seg8 =1'b0; end
			4'b1111:begin seg1 =1'b0;seg2 =1'b1; seg3 =1'b1; seg4 =1'b1;seg5 =1'b0;seg6 =1'b0; seg7 =1'b0;seg8 =1'b0; end
			
			endcase
	end



assign seg_1 = seg1;
assign seg_2 = seg2;
assign seg_3 = seg3;
assign seg_4 = seg4;
assign seg_5 = seg5;
assign seg_6 = seg6;
assign seg_7 = seg7;
assign seg_8 = seg8;
assign seg_9 = seg9;
assign seg_10 = seg10;
assign seg_11 = seg11;
assign seg_12 = seg12;
assign seg_13 = seg13;
assign seg_14 = seg14;
assign seg_15 = seg15;
assign seg_16 = seg16;



	endmodule