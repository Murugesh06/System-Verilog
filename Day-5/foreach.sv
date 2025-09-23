module tb;
  int arr[5][2]='{'{1,2},'{3,4},'{5,6},'{7,8},'{9,10}};
  initial begin
    foreach(arr[i])begin
      foreach(arr[i][j])begin
        $display("arr[%0d][%0d]=%0d",i,j,arr[i][j]);
      end
    end
  end
endmodule
