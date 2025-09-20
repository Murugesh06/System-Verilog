module array_method2;
  int arr[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};
  int res[$];

  initial begin
    res = arr.min();
    $display ("min: %p", res);

    res = arr.max();
    $display ("max: %p", res);

    res = arr.unique();
    $display ("unique: %p", res);

    res = arr.unique(x) with (x < 3);
    $display ("unique: %p", res);

    res = arr.unique_index;
    $display ("unique_index : %p", res);
  end
endmodule
