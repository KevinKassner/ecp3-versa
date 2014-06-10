`timescale 1 ns / 100 ps

module test;

wire [7:0] gpio;
wire [26:0] count;

  /* Make a rstn that pulses once. */
  reg rstn = 0;
  initial begin
	$monitor("time=%10d, clk=%b, rstn=%b, gpio=%b, count=%b", $time, clk, rstn, gpio, count);
     # 0 rstn = 0;
     # 13 rstn = 1;
     # 100 $finish;
  end

  /* Make a regular pulsing clock. */
  reg clk = 0;
  always #5 clk = !clk;

  wiggle u1 (clk, rstn, gpio, count);

endmodule // test
