module dynamic_array2;
  string fruits[];
  initial begin
    fruits=new[3];
    fruits='{"apple", "orange", "mango"};
    $display("size of array:%d",fruits.size());
    fruits.delete();
    $display("size of array:%d",fruits.size());
  end
endmodule
