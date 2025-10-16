class generator;
  transaction trans;
  mailbox gen2drv;
  event g;
  
  function new(mailbox gen2drv);
    this.gen2drv = gen2drv ;
  endfunction
  
  task main();
    trans = new();
    repeat(2) 
      begin
      trans.randomize();
      gen2drv.put(trans);
      $display("	GENERATOR CLASS DATA  ");
        $display("time=%0t addr=%0h data_in=%0h",$time,trans.addr,trans.data_in);
        @g;
    end
  endtask
  
endclass
      
