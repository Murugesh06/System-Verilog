class altpairs;
  rand bit arr[8];
  constraint c{foreach(arr[i])
                       if(i%4<2) arr[i]==0;
                       else arr[i]==1;
              }
endclass

module tb;
  altpairs a;
  initial begin
    a=new();
    a.randomize;
    $display("%0p",a.arr);
  end
endmodule
