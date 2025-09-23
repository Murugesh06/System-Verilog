module tb;
  string a[];
  initial begin
    $display("size of the array: %0d",a.size());
    a=new[5];
    a='{"apple","orange","peer","guava","mango"};
    $display("array a: %p",a);
    $display("size of array: %0d",a.size());
    a=new[15](a);
    $display("array a: %p",a);
    $display("size of array: %0d",a.size());
    a.delete();
    $display("array a: %p",a);
    $display("size of array: %0d",a.size());
  end
endmodule
