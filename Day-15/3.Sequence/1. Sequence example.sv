module tb;
  bit a;
  bit clk;
  always #10 clk<=~clk;
 
  sequence s_a;
    @(posedge clk) a;
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
    -------------------------------------------------------------------------------------------------------------------------------------------------------------
# [10] a=0
# ** Error: Assertion error.
#    Time: 10 ns Started: 10 ns  Scope: tb File: testbench.sv Line: 10
# [30] a=0
# ** Error: Assertion error.
#    Time: 30 ns Started: 30 ns  Scope: tb File: testbench.sv Line: 10
# [50] a=1
# [70] a=1
# [90] a=1
# [110] a=1
# [130] a=1
# [150] a=1
# [170] a=0
# ** Error: Assertion error.
#    Time: 170 ns Started: 170 ns  Scope: tb File: testbench.sv Line: 10
# [190] a=1
