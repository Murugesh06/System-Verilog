class sequences;
  rand bit[7:0]data;
  constraint c{foreach(data[i])
    data[i]==((i%2)==0?1:0);
              }
  endclass
  
  module tb;
    sequences s;
    initial begin
      s=new();
      s.randomize();
      $display("data=%b",s.data);
    end
      endmodule
