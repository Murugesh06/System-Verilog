class packet;
  int count;
  function new(int c=0);
    count=c;
  endfunction
endclass

module tb;
  packet pk[];
  initial begin
    pk=new[3];
    for(int i=0;i<$size(pk);i++)begin
      pk[i]=new(i);
    end
    foreach(pk[i])begin
      $display("pk[%0d]=%0d",i,pk[i].count);
    end
  end
endmodule
