class random;
  rand int arr[6];
  constraint c{
    foreach(arr[i]){
      if(i%2==0) arr[i]==5*(i+1);
      else arr[i]==-5*(i+1);
    }
  }
      endclass
      
      module tb;
        random r;
        initial begin
          r=new();
          r.randomize();
          $display("Sequence=%0p",r.arr);
        end
      endmodule
