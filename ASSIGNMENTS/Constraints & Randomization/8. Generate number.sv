class random;
  rand int num;
  constraint c{num inside{25, 27, 30, 36, 40, 45};}
endclass

module tb;
  random r;
  initial begin
    r=new();
    r.randomize();
    $display("number=%0d",r.num);
  end
endmodule
