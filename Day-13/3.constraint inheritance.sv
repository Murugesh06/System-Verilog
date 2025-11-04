class random;
  rand bit[2:0]addr1;
  randc bit[2:0]addr2;
  constraint c{addr1>5;}
endclass

class packet extends random;
  constraint c{addr1<5;}
endclass

module tb;
  random r;
  packet p;
  initial begin
    r=new();
    p=new();
    repeat(2)begin
      r.randomize();
      $display("addr1=%0d,addr2=%0d",r.addr1,r.addr2);
    end
    $display("---------------------");
    repeat(2)begin
      p.randomize();
      $display("addr1=%0d,addr2=%0d",r.addr1,r.addr2);
    end
  end
endmodule
