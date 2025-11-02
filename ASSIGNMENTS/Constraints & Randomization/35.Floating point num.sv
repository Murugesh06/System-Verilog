class floating;
  rand real num;
  constraint c{num inside{[1.35:2.57]};}
endclass

module tb;
  floating f;
  initial begin
    f=new();
    repeat(3)begin
      f.randomize();
      $display("num=%0.2f",f.num);
    end
  end
endmodule
