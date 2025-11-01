class random;
  rand bit[3:0] arr[10];
  constraint c{
    foreach(arr[i]){
      if(i<(arr.size()-2))  
        (arr[i]+arr[i+1]+arr[i+2])%2==0;
    }
  }
    endclass
    
 module tb;

   initial begin
        random r;
     r=new();
     r.randomize();
     foreach(r.arr[i])
       $display("arr[%0d]=%0d",i,r.arr[i]);
   end
 endmodule
