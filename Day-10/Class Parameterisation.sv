class sample #(int size=8);
  bit[size-1:0] count;
endclass

module tb;
  sample #(16) var1;
  sample #(.size(4)) var2;
  typedef sample #(8) td;
  td var3;
  initial begin
    var1=new;
    var2=new;
    var3=new;
    $display("size of var1=%0d bits",$bits(var1.count));
    $display("size of var2=%0d bits",$bits(var2.count));
    $display("size of var3=%0d bits",$bits(var3.count));
  end
endmodule
