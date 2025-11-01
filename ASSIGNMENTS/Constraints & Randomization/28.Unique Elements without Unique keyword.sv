class random;
  rand int arr[5];
  constraint c_range{foreach(arr[i]) arr[i] inside{[1:20]};}
  constraint c_value{foreach(arr[i])
    foreach(arr[j])
      if(i!=j)
        arr[i]!=arr[j];}
endclass

module tb;
  random r;
  initial begin
    r=new();
    r.randomize();
    $display("arr=%0p",r.arr);
  end
endmodule
                    
