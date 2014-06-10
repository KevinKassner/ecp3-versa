module wiggle (clk, rstn, gpio, count);

input clk, rstn;
output [7:0] gpio;
output [26:0] count;

reg [26:0] count;
reg [7:0] sreg;
reg shift;
wire [7:0] gpio;

always @(posedge clk or posedge rstn)
begin
	if (rstn == 0) begin
		count <= 0;
	end else begin
		count <= count + 1;
	end
end

always @(posedge clk or posedge rstn)
begin
	if (rstn == 0) begin
		shift = 0;
	end if (count == 1) begin
		shift = 1;
	end else begin
		shift = 0;
	end
end

always @(posedge clk or posedge rstn)
begin
	if (rstn == 0) begin
		sreg <= 1;
	end if (shift == 1) begin
		sreg <= sreg << 1;
		sreg[0] <= sreg[7];
	end else begin
		sreg <= sreg;
	end
end

assign gpio = sreg;

endmodule
