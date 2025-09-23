module tb;
  string arr[5] = '{"apple", "orange", "pear", "blueberry", "lemon"};
  initial begin
    for(int i=0,j=2;i<$size(arr);i++)begin
      arr[i][j]="0";
      $display("arr[%0d]=%s",i,arr[i]);
    end
  end
endmodule
