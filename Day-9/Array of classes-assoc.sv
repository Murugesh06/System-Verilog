class packet;
  int count;
  function new(int c=0);
    count=c;
  endfunction
endclass

module tb;
  packet pk[string];
  initial begin
    pk["pk1"]=new(100);
    pk["pk2"]=new(75);
    pk["pk3"]=new(25);
    foreach(pk[k])begin
      $display("pk[%s]=%0d",k,pk[k].count);
    end
  end
endmodule
