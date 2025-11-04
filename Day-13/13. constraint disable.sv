class random;
  rand bit[3:0] addr;
  rand bit[3:0] data;
  constraint c{addr inside{[0:10]};data inside{[0:12]};}
endclass

module tb;
  initial begin
    random r=new();
    repeat(3)begin
      r.randomize();
      $display("addr=%0d,data=%0d",r.addr,r.data);
    end
    $display("--------------------------------");
     repeat(3)begin
      r.randomize();
       r.c.constraint_mode(0);
      $display("addr=%0d,data=%0d",r.addr,r.data);
    end
  end
endmodule
