class UniqueElements;
  rand int arr[3][3];
  constraint c_range{foreach(arr[i,j]) arr[i][j] inside{[1:20]};}
  constraint c_uniqueness{foreach(arr[i,j]) foreach(arr[m,n]) if(!(i==m && j==n)) arr[i][j]!=arr[m][n];}
endclass

module tb;
  UniqueElements u;
  initial begin
    u=new();
    u.randomize();
    $display("2D Array:");
    foreach(u.arr[i])
      $display("%0p",u.arr[i]);
  end
endmodule
                             
