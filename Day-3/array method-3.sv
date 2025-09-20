module tb;
  int arr[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};

  initial begin
    arr.reverse();
    $display ("reverse: %p", arr);

    arr.sort();
    $display ("sort: %p", arr);

    arr.rsort();
    $display ("rsort: %p", arr);

    for (int i = 0; i < 5; i++) begin
    	arr.shuffle();
      $display ("shuffle_%0d  = %p", i, arr);
    end
  end
endmodule
