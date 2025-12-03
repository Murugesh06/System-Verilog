module tb;
  bit a,b;
  bit clk;
  always #10 clk<=~clk;
 
  sequence s_a;
    @(posedge clk) a ##2 b;
  endsequence
  
  assert property(s_a)
    $display("[%0t] Assertion Passed", $time);
  initial begin
    for(int i=0;i<10;i++)begin
      @(posedge clk);
      a<=$random;
      b<=$random;
      $display("[%0t] a=%b b=%b", $time, a, b);
    end
    #10 $finish;
  end
endmodule
    ---------------------------------------------------------------------------------------------------------------------------
# [10] a=0 b=0
# ** Error: Assertion error.
#    Time: 10 ns Started: 10 ns  Scope: tb File: testbench.sv Line: 10
# [30] a=0 b=1
# ** Error: Assertion error.
#    Time: 30 ns Started: 30 ns  Scope: tb File: testbench.sv Line: 10
# [50] a=1 b=1
# [70] a=1 b=1
# [90] a=1 b=0
# ** Error: Assertion error.
#    Time: 90 ns Started: 50 ns  Scope: tb File: testbench.sv Line: 10
# [110] a=1 b=1
# [110] Assertion Passed
# [130] a=0 b=1
# ** Error: Assertion error.
#    Time: 130 ns Started: 130 ns  Scope: tb File: testbench.sv Line: 10
# [130] Assertion Passed
# [150] a=1 b=0
# ** Error: Assertion error.
#    Time: 150 ns Started: 110 ns  Scope: tb File: testbench.sv Line: 10
# [170] a=1 b=0
# [190] a=1 b=0
# ** Error: Assertion error.
#    Time: 190 ns Started: 150 ns  Scope: tb File: testbench.sv Line: 10
# ** Note: $finish    : testbench.sv(19)
