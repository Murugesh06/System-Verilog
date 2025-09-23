module tb;
  bit clk;
  always #10 clk=~clk;
  initial begin
    bit[2:0] num=$random;
    $display ("[%0t] Repeat loop is going to start with num = %0d", $time, num);
    repeat(num) @(posedge clk);
    $display ("[%0t] Repeat loop is finished with num = %0d", $time, num);
    $finish();
  end
endmodule
