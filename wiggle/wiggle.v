module wiggle (gpio, clk, rstn);

output [7:0] gpio;
input clk, rstn;
reg [7:0] register;
wire [7:0] gpio;

always @(posedge clk or posedge rstn)
begin
	if (rstn == 0) begin
		register <= 1;
	end else begin
	register <= register << 1;
	end
end

assign gpio = register;

endmodule
