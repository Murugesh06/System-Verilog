module dyn_array4;
  int arr[];
  initial begin
    arr=new[5];
    foreach(arr[i])begin
      arr[i]=i;
    end
    $display("array:%p",arr);
    $display("size of array:%0d",arr.size());
    arr.shuffle();
    $display("shuffled array:%p",arr);
  end
endmodule
         
