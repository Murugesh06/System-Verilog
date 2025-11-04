class random;
  rand bit[3:0] addr1;
  rand bit[3:0] addr2;
  rand bit[3:0] data;
  constraint c1{addr1 dist{0:=2,4:=1,3:=2};}
  constraint c2{addr2 dist{0:/2,[1:5]:/5,[6:15]:/8};}
  constraint c3{data inside{[addr1:addr2]};}
endclass

module tb;
  initial begin
    random r=new();
    repeat(3)begin
      r.randomize();
      $display("addr1=%0d,addr2=%0d,data=%0d",r.addr1,r.addr2,r.data);
    end
  end
endmodule
