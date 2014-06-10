`timescale 1 ns / 100 ps

module test;

wire [7:0] gpio;
wire [26:0] count;
wire shift;

  /* Make a rst that pulses once. */
  reg rst = 1;
  initial begin
	$monitor("time=%10d, clk=%b, rst=%b, gpio=%b, count=%b shift=%b", $time, clk, rst, gpio, count, shift);
     # 0 rst = 1;
     # 13 rst = 0;
     # 100 $finish;
  end

  /* Make a regular pulsing clock. */
  reg clk = 0;
  always #5 clk = !clk;

  wiggle u1 (clk, rst, gpio, count, shift);

endmodule // test
