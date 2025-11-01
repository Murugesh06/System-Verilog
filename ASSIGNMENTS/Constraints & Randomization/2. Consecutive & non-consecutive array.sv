class FixedArrayConsecutive;
  rand int arr[10];
  constraint c{
    foreach(arr[i]) {
      if(i<5) arr[i]==arr[0]+i;
      else arr[i]==arr[i-1]+i;
    }
  }
      endclass
      
module tb;
  FixedArrayConsecutive fc;
  initial begin
    fc=new();
    fc.randomize();
    foreach(fc.arr[i])
      $display("arr[%0d]=%0d",i,fc.arr[i]);
  end
endmodule
