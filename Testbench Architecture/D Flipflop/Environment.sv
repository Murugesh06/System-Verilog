`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  generator gen;
  driver drv;
  monitor mon;
  scoreboard scb;
  virtual dff_if vif;
  mailbox gen2drv;
  mailbox mon2scb;
  
  function new(virtual dff_if vif);
    this.vif=vif;
    gen2drv=new();
    mon2scb=new();
    gen=new(vif,gen2drv);
    drv=new(vif,gen2drv);
    mon=new(vif,mon2scb);
    scb=new(vif,mon2scb);
  endfunction
  
  task test_run();
    fork
      gen.main();
      drv.main();
      mon.main();
      scb.main();
    join
  endtask
  
endclass
