module array_method1;
  int arr[9]='{4, 7, 2, 5, 7, 1, 6, 3, 1};
  int res[$];
  
  initial begin
    res=arr.find(x) with(x>3);
    $display("elements greater than 3=%p",res);
    res=arr.find_index(x) with(x==4);
    $display("index of 4=%0d",res[0]);
    res=arr.find_first(x) with (x>4 & x<7);
    $display("%p",res);
    res=arr.find_first_index(x) with (x>4 & x<7);
    $display("%p",res);
	res=arr.find_last(x) with (x>4 & x<7);
    $display("%p",res);
    res=arr.find_last_index(x) with (x>4 & x<7);
    $display("%p",res);
  end
endmodule
