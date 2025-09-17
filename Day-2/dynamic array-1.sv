module dynamic_array1;
  int arr[];
  initial begin
    arr=new[5];
    arr='{0,1,2,3,4};
    foreach(arr[i])begin
      $display("arr[%0d]=%0d",i,arr[i]);
    end
  end
endmodule
