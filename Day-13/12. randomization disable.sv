class random;
  rand bit a;
  rand bit[2:0] b;
  constraint c{solve a before b;}
  constraint c1{(a==1)->(b==0);}
endclass

module tb;
  initial begin
    random r=new();
     $display("a.rand_mode()=%0d  b.rand_mode()=%0d",r.a.rand_mode(),r.b.rand_mode());
    r.a.rand_mode(0);
    r.randomize();
    $display("a=%0b  b=%0d",r.a,r.b);
    $display("a.rand_mode()=%0d  b.rand_mode()=%0d",r.a.rand_mode(),r.b.rand_mode());
  end
endmodule
