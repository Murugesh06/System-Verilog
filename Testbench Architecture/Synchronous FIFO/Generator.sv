class generator;
  transaction trans;
  mailbox gen2drv;
  event g;
  
  function new(mailbox gen2drv);
    this.gen2drv=gen2drv;
  endfunction
  
  task main();
    trans=new();
    forever begin
        trans.randomize();
        gen2drv.put(trans);
        $display("GENERATOR DATA");
        $display("time=%0t data_in=%0h",$time,trans.data_in);
        @g;
      end
  endtask
  
endclass
