module unpacked_array1;
  byte arr[8];
  initial begin
    foreach(arr[i])begin
      arr[i]=$random;
      $display("arr[%0d]=%h",i,arr[i]);
    end
    $display("arr=%p",arr);
  end
endmodule
             
