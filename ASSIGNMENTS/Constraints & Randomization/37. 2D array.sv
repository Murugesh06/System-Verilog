class array2d;
  rand int arr[3][3];
  constraint c_range{foreach(arr[i,j]) arr[i][j] inside{[1:9]};}
  constraint c_rowsum{foreach(arr[i])
    (arr[i][0] + arr[i][1] + arr[i][2]) == 15;
                     }
  constraint c_unique{foreach(arr[i,j])
    if(j>0)
      arr[i][j]!=arr[i][j-1];
                     }
endclass

module tb;
  array2d a;
  initial begin
    a=new();
    a.randomize();
    $display("2D array:");
    foreach(a.arr[i])
      $display("%0p",a.arr[i]);
  end
endmodule
