class random;
  rand bit[3:0] addr1;
  rand bit[3:0] addr2;
  rand int data;
  constraint c1{data<addr1+addr2;}
  constraint c2{addr2>addr1;}
  constraint c3{addr1>5;}
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
