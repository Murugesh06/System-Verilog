module tb;
  bit[2:0]mode;
  covergroup cgrp();
    coverpoint mode{bins b1={1};bins b2={5};}
  endgroup

  initial begin
    cgrp cg=new();
    $monitor("time=%0t,mode=%0d",$time,mode);
    repeat(5)begin
      mode=$random;
      #5;
      cg.sample();
    end
    $display("coverage=%0f",cg.get_inst_coverage());
    $finish();
  end
endmodule
