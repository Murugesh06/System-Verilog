class random;
  rand bit[3:0] addr;
  rand bit[3:0] data;
  static constraint c{addr==5;}
  constraint c1{data==10;}
endclass

module tb;
  initial begin
    random r1=new();
    random r2=new();
    r1.c.constraint_mode(0);
    r1.randomize();
    $display("addr=%0d data=%0d",r1.addr,r1.data);
    r2.randomize();
    $display("addr=%0d data=%0d",r2.addr,r2.data);
    $display("--------------------------------");
    r2.c1.constraint_mode(0);
    r2.c.constraint_mode(1);
    r1.randomize();
    $display("addr=%0d data=%0d",r1.addr,r1.data);
    r2.randomize();
    $display("addr=%0d data=%0d",r2.addr,r2.data);
  end
endmodule
