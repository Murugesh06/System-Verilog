class IncrementedSequence;
  rand int elem[8];
  constraint c{foreach(elem[i]) {elem[i]==i*10+9;}}
endclass

module tb;
  IncrementedSequence inc;
  initial begin
    inc=new();
    inc.randomize();
    foreach(inc.elem[i])
      $display("IncrementedSequence[%0d]=%0d",i,inc.elem[i]);
  end
endmodule
