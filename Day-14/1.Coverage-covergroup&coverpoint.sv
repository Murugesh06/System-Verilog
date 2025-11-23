module tb;
  bit [1:0]mode;
  bit [2:0]cfg;
  bit clk;
  always #20 clk=~clk;
  covergroup cgrp@(posedge clk);
    cp1:coverpoint mode;
    cp2:coverpoint cfg;
  endgroup
  cgrp cg=new();
  initial begin
    $monitor("time=%0t,mode=%0d,cfg=%0d",$time,mode,cfg);
    repeat(5)begin
      @(negedge clk)
      mode=$random;
      cfg=$random;
      #5;
    end
  end
  initial begin
    #500 $display("Coverage=%0f",cg.get_inst_coverage());
    $finish();
  end
endmodule
    
