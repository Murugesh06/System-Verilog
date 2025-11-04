class random;
  rand bit[3:0] addr;
  rand bit[3:0] data;
  string str;
  constraint c{(str=="small")->(addr>5);}
  constraint c1{(addr>5)->(data>5);}
endclass

module tb;
  initial begin
    random r=new();
    r.str="small";
    repeat(3)begin
      r.randomize();
      $display("addr=%0d,data=%0d",r.addr,r.data);
    end
  end
endmodule
