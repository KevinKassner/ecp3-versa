`timescale 1 ns / 100 ps

module test;

wire [7:0] led;
wire [26:0] gpio;

  /* Make a rst that pulses once. */
  reg rst = 1;
  initial begin
	$monitor("time=%10d, clk=%b, rst=%b, led=%b, gpio=%b", $time, clk, rst, led, gpio);
     # 0 rst = 1;
     # 13 rst = 0;
     # 200 $finish;
  end

  /* Make a regular pulsing clock. */
  reg clk = 0;
  always #5 clk = !clk;

  wiggle u1 (clk, rst, led, gpio);

endmodule // test
