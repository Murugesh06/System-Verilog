class random;
  rand bit a;
  rand bit[1:0] b;
  constraint c{solve a before b;}
  constraint c1{(a==1)->(b==0);}
endclass

module tb;
  initial begin
    random r=new();
    repeat(10)begin
      r.randomize();
      $display("a=%0b  b=%0d",r.a,r.b);
    end
  end
endmodule
