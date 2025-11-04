class random;
  rand bit[2:0]addr1;
  randc bit[2:0]addr2;
endclass

module tb;
  random r;
  initial begin
    r=new();
    repeat(10)begin
    	r.randomize();
    	$display("addr1=%0d,addr2=%0d",r.addr1,r.addr2);
    end
  end
endmodule
