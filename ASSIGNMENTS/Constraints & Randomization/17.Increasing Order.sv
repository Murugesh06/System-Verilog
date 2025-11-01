class random;
  rand bit[3:0] arr[10];
  constraint c{
    foreach(arr[i]){
      if(i>0)
        arr[i]>arr[i-1];
    }
  }
      endclass
      
      module tb;
        random r;
        initial begin
          r=new();
          r.randomize();
          foreach(r.arr[i])
            $display("arr[%0d]=%0d",i,r.arr[i]);
        end
      endmodule
     
