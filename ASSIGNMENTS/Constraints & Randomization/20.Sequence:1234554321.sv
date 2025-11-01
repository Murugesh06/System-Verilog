class random;
  rand int arr[10];
  constraint c{
    foreach(arr[i]){
      if(i<5) arr[i]==i+1;
      else arr[i]==arr[9-i];
  }
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
