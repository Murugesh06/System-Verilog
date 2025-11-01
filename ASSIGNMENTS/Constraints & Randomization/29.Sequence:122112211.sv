class random;
  rand int arr[9];
  constraint c{arr[0]==1;arr[1]==2; arr[2] == 2;arr[3] == 1;arr[4] == 1;arr[5]== 2;arr[6] == 2;arr[7] == 1;arr[8] == 1;}
endclass

module tb;
  random r;
  initial begin
    r=new();
    r.randomize();
    $display("Sequence=%0p",r.arr);
  end
endmodule
