class alternate;
  rand bit[9:0] data;
  rand bit start_bit;
  constraint c{
    foreach(data[i]){
      if(i==0) data[i]==start_bit;
      else data[i]!=data[i-1];
    }
  }
      endclass
      
      module tb;
        alternate a;
        initial begin
          a=new();
          a.randomize();
          $display("value=%0b",a.data);
        end
      endmodule
