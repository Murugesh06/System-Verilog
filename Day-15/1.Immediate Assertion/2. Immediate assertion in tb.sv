class packet;
  rand bit [7:0]addr;
  constraint c{addr>5;addr<3;}
endclass

module tb;
  packet p=new();
  initial begin
    assert(p.randomize());
    $display("addr=%0b",p.addr);
  end
endmodule
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# ** Error: Assertion error.
#    Time: 0 ns  Scope: tb File: testbench.sv Line: 9
# addr=0
# exit
