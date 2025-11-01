class UniquePattern;
  rand bit[3:0] value;
  bit [3:0] history[5];
  constraint c{foreach(history[i]) {value!=history[i];}}
    endclass
    
module tb;
  UniquePattern up;
  initial begin
    up=new();
    repeat(10)begin
      up.randomize();
      $display("value=%0d",up.value);
      up.history={up.value,up.history[0:3]};
    end
  end
endmodule
