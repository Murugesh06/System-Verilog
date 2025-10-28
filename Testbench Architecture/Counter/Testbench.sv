
`include "interface.sv"
`include "test.sv"

module testbench;
  logic clk ;
 
  inf vif(clk);
  test tst(vif);
  des dut(.clk(vif.clk),.rst(vif.rst),.m(vif.m),.count(vif.count));
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk ;
  end
  
  initial begin
    vif.rst=1;
    #5 vif.rst=0;
  end 
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #1000;
    $finish;
  end
  
endmodule
  
  
