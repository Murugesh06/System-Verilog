class random;
  rand int value;
  constraint c{value dist{[0:100]:=10,[101:255]:=30};}
endclass

module tb;
  random r;
  initial begin
    r=new();
    repeat(10)begin
      r.randomize();
      $display("value=%0d",r.value);
    end
  end
endmodule
