class FloatRange;
  rand int num;
  constraint c{num inside{[99:100]};}
endclass

module tb;
  FloatRange fr;
  initial begin
    fr=new();
    fr.randomize();
    $display("number=%0d",fr.num);
  end
endmodule
