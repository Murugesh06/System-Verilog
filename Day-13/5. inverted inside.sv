class random;
  rand bit[3:0] s_addr;
  rand bit[3:0] e_addr;
  rand bit[3:0] data;
  constraint c{data inside{[s_addr:e_addr]};}
endclass

module tb;
  initial begin
    random r=new();
    repeat(3)begin
      r.randomize();
      $display("s_addr=%0d,e_addr=%0d,data=%0d",r.s_addr,r.e_addr,r.data);
    end
  end
endmodule
