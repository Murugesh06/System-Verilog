module tb;
  bit a;
  bit clk;
  always #10 clk<=~clk;
 
  sequence s_a;
    @(posedge clk) $stable(a);
  endsequence
  
  assert property(s_a);
  initial begin
    for(int i=0;i<10;i++)begin
      @(posedge clk);
      a<=$random;
      $display("[%0t] a=%0d", $time, a);
    end
    #10 $finish;
  end
endmodule
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# [10] a=0
# [30] a=0
# [50] a=1
# ** Error: Assertion error.
#    Time: 50 ns Started: 50 ns  Scope: tb File: testbench.sv Line: 10
# [70] a=1
# [90] a=1
# [110] a=1
# [130] a=1
# [150] a=1
# [170] a=0
# ** Error: Assertion error.
#    Time: 170 ns Started: 170 ns  Scope: tb File: testbench.sv Line: 10
# [190] a=1
# ** Error: Assertion error.
#    Time: 190 ns Started: 190 ns  Scope: tb File: testbench.sv Line: 10
# ** Note: $finish    : testbench.sv(17)
