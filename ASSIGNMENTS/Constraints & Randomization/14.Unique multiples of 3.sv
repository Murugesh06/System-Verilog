class random;
  rand bit[3:0] arr[5];
  constraint c{foreach(arr[i]){arr[i]%3==0;}unique{arr};}
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
