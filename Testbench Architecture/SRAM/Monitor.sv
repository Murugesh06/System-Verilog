class monitor ;
  transaction trans;
  virtual inf vif;
  mailbox mon2scb;
  
  function new(virtual inf vif,mailbox mon2scb);
    this.vif = vif;
    this.mon2scb = mon2scb ;
  endfunction
 
  task main();
    trans = new();
    repeat(2)
      begin
      @(posedge vif.clk)begin
       #1;
       trans.clk	=  vif.clk;
       trans.rst	=  vif.rst ;
       trans.en		=  vif.en;
       trans.addr	=  vif.addr;
       trans.data_in=  vif.data_in;
       trans.data_out = vif.data_out;
        
        mon2scb.put(trans);
        $display("  MONITOR CLASS DATA  ");
        $display("time=%0t,clk=%0b,rst=%0b,en=%0b,addr=%0h,data_in=%0h,data_out=%0h",$time,trans.clk,trans.rst,trans.en,trans.addr,trans.data_in,trans.data_out);
                 
      end
    end
  endtask
  
endclass
    
