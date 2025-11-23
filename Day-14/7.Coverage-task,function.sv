module tb;
  bit [7:0]addr,data;
  covergroup cgrp();
    cp1:coverpoint addr;
    cp2:coverpoint data;
    cp1Xcp2:cross cp1,cp2;
  endgroup
  cgrp cg=new();
  initial begin
    $set_coverage_db_name("my covergroup");
    forever begin
      cg.sample();
      #5;
    end
  end
  initial begin
    $monitor("time=%0d addr=%0d data=%0d",$time,addr,data);
    repeat(16)begin
      addr=$random;
      data=$random;
      #5;
    end
    $display("coverage=%0f",$get_coverage());
    $finish();
  end
endmodule
