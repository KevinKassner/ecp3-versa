module count4(
  input clk, direction,reset,
  output reg [3:0] count
  );

reg [3:0] countai, countbi;


always@(posedge clk)

  begin 
	if(reset)
   begin
    countai <= 8'h0;
    countbi <= 8'h0;
   end
   else
	if(direction)
     countai <= countai + 1;
    else
     countai <= countai - 1;
    countbi <= countai;
    count <= countbi;
   end
 

endmodule
