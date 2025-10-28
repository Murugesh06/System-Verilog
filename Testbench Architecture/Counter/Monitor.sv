class monitor;
  transaction trans;
  virtual inf vif;
  mailbox mon2scb;
  
  function new(virtual inf vif,mailbox mon2scb);
    this.vif = vif;
    this.mon2scb = mon2scb;
  endfunction
  
  task main();
    trans = new();
    repeat(2)
      begin
        @(negedge vif.clk)begin
       trans.rst = vif.rst;
       trans.m = vif.m ;
        #1
       trans.count = vif.count ;
       mon2scb.put(trans);
        $display("______ MONITOR CLASS DATA______  ");
        $display("$time = %0t,clk=%0b,rst = %0b,M= %0b,count = %0b",$time,vif.clk,trans.rst,trans.m,trans.count);
      end
    end
  endtask
  
endclass
