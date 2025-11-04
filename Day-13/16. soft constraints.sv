class random;
  rand bit[3:0] addr;
  rand bit[3:0] data;
  constraint c{addr>0;addr<10;}
endclass

module tb;
  initial begin
    random r=new();
    repeat(3)begin
      r.randomize() with{addr==7;};
    $display("addr=%0d data=%0d",r.addr,r.data);
    end
  end
endmodule
