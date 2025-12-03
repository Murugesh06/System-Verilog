module des(my_inf inf);
  always @(posedge inf.clk)begin
    if(inf.push)begin
      assert(!inf.full)
        $display("PASS- push when fifo is not full");
      else
        $display("FAIL-push when fifo is full");
    end
    
    if(inf.pop)begin
      assert(!inf.empty)
        $display("PASS-pop when fifo is not empty");
      else
        $display("FAIL-pop when fifo is empty");
    end
  end
endmodule
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
interface my_inf(input bit clk);
  logic push;
  logic pop;
  logic full;
  logic empty;
endinterface

module tb;
  bit clk;
  always #10 clk<=~clk;
  my_inf inf(clk);
  des dut(.*);
  initial begin
    for(int i=0;i<5;i++)begin
      inf.push<=$random;
      inf.pop<=$random;
      inf.full<=$random;
      inf.empty<=$random;
      $strobe("[%0t] push=%0b full=%0b pop=%0b empty=%0b",$time,inf.push,inf.pop,inf.full,inf.empty);
      @(posedge clk);
    end
    #10 $finish();
  end
endmodule
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# [0] push=0 full=1 pop=1 empty=1
# FAIL-pop when fifo is empty
# [10] push=1 full=1 pop=1 empty=0
# FAIL-push when fifo is full
# PASS-pop when fifo is not empty
# [30] push=1 full=1 pop=0 empty=1
# PASS- push when fifo is not full
# FAIL-pop when fifo is empty
# [50] push=1 full=0 pop=1 empty=0
# FAIL-push when fifo is full
# [70] push=1 full=0 pop=1 empty=1
# FAIL-push when fifo is full
