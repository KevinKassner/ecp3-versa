`timescale 1 ns / 100 ps

module test;

wire [7:0] led;
wire [23:0] gpio;

reg rstn = 0;
initial begin
	$monitor("time=%10d, clk=%b, rstn=%b, led=%b, gpio=%b", $time, clk, rstn, led, gpio);
	$dumpfile("my_design.vcd");
	$dumpvars(0, test);
	# 0 rstn = 0;
	# 13 rstn = 1;
	# 200 $finish;
end

reg clk = 0;
always #5 clk = !clk;

pcie_x1 u1 (clk, rstn, led, gpio);

endmodule
