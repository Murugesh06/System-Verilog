module assoc_array1;
  int arr1[int];
  int arr2[string];
  string arr3[string];
  initial begin
    arr1='{1:2,3:4};
    arr2='{"apple":1,"orange":2};
    arr3='{"apple":"a","orange":"44"};
    $display("arr1=%p",arr1);
    $display("arr2=%p",arr2);
    $display("arr3=%p",arr3);
  end
endmodule
