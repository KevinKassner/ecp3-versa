`timescale 1 ns / 100 ps

module test;

wire [7:0] led;
wire [26:0] gpio;

  /* Make a rstn that pulses once. */
  reg rstn = 0;
  initial begin
	$monitor("time=%10d, clk=%b, rstn=%b, led=%b, gpio=%b", $time, clk, rstn, led, gpio);
     # 0 rstn = 0;
     # 13 rstn = 1;
     # 200 $finish;
  end

  /* Make a regular pulsing clock. */
  reg clk = 0;
  always #5 clk = !clk;

  wiggle u1 (clk, rstn, led, gpio);

endmodule // test
