class driver;
  
  transaction trans;
  mailbox gen2drv;
  virtual inf vif;
  
  function new(virtual inf vif,mailbox gen2drv);
    this.gen2drv   = gen2drv ;
    this.vif = vif;
  endfunction
  
  task main();
    repeat(2) 
      begin
      gen2drv.get(trans);
      vif.addr    = trans.addr ;
      vif.data_in =  trans.data_in;
      $display("  DRIVER CLASS DATA  ");
        $display("$time=%0t addr=%0h data_in=%0h",$time,vif.addr,vif.data_in);
    end
  endtask
  
endclass
