class random;
  rand int num;
  constraint c{num inside{[10:30]};num%2==0;}
endclass

module tb;
  random r;
  initial begin
    r=new();
    r.randomize();
    $display("num=%0d",r.num);
  end
endmodule
  
