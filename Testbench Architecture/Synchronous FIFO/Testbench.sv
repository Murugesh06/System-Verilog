`include "interface.sv"
`include "test.sv"

module tb;
  logic clk;
  logic rst;
  logic en;
  
  inf vif(clk,rst,en);
  test tst(vif);
  
  des dut(.clk(vif.clk),.rst(vif.rst),.en(vif.en),.data_in(vif.data_in),.data_out(vif.data_out),.full(vif.full),.empty(vif.empty));
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    rst=1;en=1;
    #10
    rst=0;
    #500
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
