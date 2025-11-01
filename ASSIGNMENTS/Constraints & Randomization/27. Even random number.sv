class random;
  rand int num;
  constraint c{num inside{[50:100]};num%2==0;}
endclass

module tb;
  random r;
  initial begin
    r=new();
    repeat(3)begin
    r.randomize();
    $display("Number=%0d",r.num);
    end
  end
endmodule
