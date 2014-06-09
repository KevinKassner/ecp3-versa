module test;

wire [7:0] gpio;

  /* Make a rstn that pulses once. */
  reg rstn = 0;
  initial begin
	$monitor("clk=%b, rstn=%b, gpio=%b", clk, rstn, gpio);
     # 17 rstn = 1;
     # 11 rstn = 0;
     # 29 rstn = 1;
     # 11 rstn = 0;
     # 100 $stop;
  end

  /* Make a regular pulsing clock. */
  reg clk = 0;
  always #5 clk = !clk;

  wiggle u1 (gpio, clk, rstn);

endmodule // test
