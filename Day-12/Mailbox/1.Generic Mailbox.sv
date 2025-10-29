module tb;
  mailbox mbx=new(2);
  initial begin
    for(int i=0;i<5;i++)begin
     #1 mbx.put(i);
      $display("[%0t] Process0: item=%0d size=%0d",$time,i,mbx.num());
    end
  end
  initial begin
    int id;
    forever begin
     #2 mbx.get(id);
      $display("[%0t] Process1: item=%0d size=%0d",$time,id,mbx.num());
    end
  end
endmodule
