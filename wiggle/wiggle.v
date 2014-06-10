module wiggle (clk, rst, led, gpio);

input clk, rst;
output [7:0] led;
output [26:0] gpio;

reg [26:0] count;
reg [7:0] sreg;
reg shift;
wire [7:0] led;
wire [26:0] gpio;

always @(posedge clk or posedge rst)
begin
	if (rst) begin
		count <= 0;
	end else begin
		count <= count + 1;
	end
end

always @(posedge clk or posedge rst)
begin
	if (rst) begin
		shift = 0;
	end if (count == 3) begin
		shift = 1;
	end else begin
		shift = 0;
	end
end

always @(posedge clk or posedge rst)
begin
	if (rst) begin
		sreg <= 1;
	end if (shift == 1) begin
		sreg <= sreg << 1;
		sreg[0] <= sreg[7];
//	end else begin
//		sreg <= sreg;
	end
end

assign led = sreg;
assign gpio = count;

endmodule
