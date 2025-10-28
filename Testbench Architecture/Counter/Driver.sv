class driver;
  transaction trans;
  virtual inf vif;
  mailbox gen2drv;
  
  function new(virtual inf vif,mailbox gen2drv);
    this.vif = vif ;
    this.gen2drv = gen2drv ;
  endfunction
  
  task main();
    trans = new();
    repeat(2)
      begin
      gen2drv.get(trans);
       vif.rst = trans.rst;
       vif.m = trans.m;
        $display(" _______ DRIVER CLASS DATA______  ");
        $display("$time = %0t rst = %0b M = %0b count =%b",$time,trans.rst,trans.m,trans.count);     
    end
  endtask
  
endclass
      
