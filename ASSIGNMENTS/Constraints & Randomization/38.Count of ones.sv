class count1;
  rand bit[15:0] data;
  rand int ones;
  constraint c_ones{ones inside{[0:16]};}
  constraint c_data{$countones(data)==ones;}
endclass

module tb;
  count1 c;
  initial begin
    c=new();
    repeat(5)begin
    c.randomize() with{ones==$urandom_range(4,10);};
      $display("ones=%0d data=%0b",c.ones,c.data);
    end
  end
endmodule
