`include "interface.sv"
`include "test.sv"

module tb;
  logic clk;
  logic rst;
  
  dff_if intf(clk,rst);
  test tst(intf);
  
  des dut(.clk(intf.clk),.rst(intf.rst),.d(intf.d),.q(intf.q));
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    rst=1;
    #10 rst=0;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #500
    $finish;
  end
  
endmodule
  
  
