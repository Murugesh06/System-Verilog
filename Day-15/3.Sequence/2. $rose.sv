module tb;
  bit a;
  bit clk;
  always #10 clk<=~clk;
 
  sequence s_a;
    @(posedge clk) $rose(a);
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
    ------------------------------------------------------------------------------------------------------------------------------------
# [10] a=0
# ** Error: Assertion error.
#    Time: 10 ns Started: 10 ns  Scope: tb File: testbench.sv Line: 10
# [30] a=0
# ** Error: Assertion error.
#    Time: 30 ns Started: 30 ns  Scope: tb File: testbench.sv Line: 10
# [50] a=1
# [70] a=1
# ** Error: Assertion error.
#    Time: 70 ns Started: 70 ns  Scope: tb File: testbench.sv Line: 10
# [90] a=1
# ** Error: Assertion error.
#    Time: 90 ns Started: 90 ns  Scope: tb File: testbench.sv Line: 10
# [110] a=1
# ** Error: Assertion error.
#    Time: 110 ns Started: 110 ns  Scope: tb File: testbench.sv Line: 10
# [130] a=1
# ** Error: Assertion error.
#    Time: 130 ns Started: 130 ns  Scope: tb File: testbench.sv Line: 10
# [150] a=1
# ** Error: Assertion error.
#    Time: 150 ns Started: 150 ns  Scope: tb File: testbench.sv Line: 10
# [170] a=0
# ** Error: Assertion error.
#    Time: 170 ns Started: 170 ns  Scope: tb File: testbench.sv Line: 10
# [190] a=1
# ** Note: $finish    : testbench.sv(17)
