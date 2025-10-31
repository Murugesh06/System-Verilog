class param #(int max_value);
  rand bit[3:0] data;
  constraint c{data<max_value;}
endclass

module tb;
  param #(4) p;
  initial begin
    p=new();
    p.randomize;
    $display("data=%0d",p.data);
  end
endmodule
