class driver;
  transaction trans;
  virtual inf vif;
  mailbox gen2drv;
  
  function new(virtual inf vif,mailbox gen2drv);
    this.vif=vif;
    this.gen2drv=gen2drv;
  endfunction
  
  task main();
    trans=new();
    forever begin
        gen2drv.get(trans);
        vif.data_in=trans.data_in;
        $display("DRIVER DATA");
        $display("time=%0t clk=%0b rst=%0b data_in=%0h",$time,vif.clk,vif.rst,trans.data_in);
      end
  endtask
  
endclass
