class dynamic;
  rand bit[3:0] arr[];
  rand int size;
  constraint c_size{size inside{[5:10]};}
  constraint c_range{arr.size()==size;}
  constraint c_order{foreach(arr[i])
    if(i>0)
      arr[i]>=arr[i-1];
                    }
endclass

module tb;
  dynamic d;
  initial begin
    d=new();
    d.randomize();
    $display("arr=%0p",d.arr);
  end
endmodule
