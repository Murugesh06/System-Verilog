class random;
  rand int arr[10];
  constraint c{
    arr[0] == 1; arr[1] == 1;
    arr[2] == 2; arr[3] == 2;
    arr[4] == 3; arr[5] == 3;
    arr[6] == 4; arr[7] == 4;
    arr[8] == 5; arr[9] == 5;
  }
      endclass
      
      module tb;
        random r;
        initial begin
          r=new();
          r.randomize();
          $display("value=%0p",r.arr);
        end
      endmodule
