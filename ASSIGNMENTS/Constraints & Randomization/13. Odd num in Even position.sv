class random;
  rand bit [3:0] value[16];
  constraint c{
    foreach(value[i]){
      if(i%2==1) value[i]%2==0;	
    }
  }
      endclass
module tb;
  random r;
  initial begin
    r=new();
    r.randomize();
    foreach(r.value[i])
      $display("value[%0d]=%0d",i,r.value[i]);
  end
endmodule
