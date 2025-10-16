`include "test.sv"
`include "interface.sv"

module testbench;
  logic clk,rst,en;
  inf vif(clk,rst,en);
  test tst(vif);
  des dut(vif.clk,vif.rst,vif.en,vif.addr,vif.data_in,vif.data_out);
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk ;
  end
  
  initial begin
    rst = 1;
    #10
    rst = 0;
  end
  
  initial begin
    en = 1;
    forever #10 en = ~en ;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
  end
  
endmodule
  
