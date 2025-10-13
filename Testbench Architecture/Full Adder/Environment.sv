`include "transaction.sv"
`include "Generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "Scoreboard.sv"

class environment;
  Generator gen;
  driver drv;
  monitor mon;
  scoreboard scb;
  mailbox gen2drv;
  mailbox mon2scb;
  virtual intf vif;
  
  function new(virtual intf vif);
    this.vif=vif;
    gen2drv=new();
    mon2scb=new();
    gen=new(gen2drv);
    drv=new(vif,gen2drv);
    mon=new(vif,mon2scb);
    scb=new(mon2scb);
  endfunction
  
  task test_run();
    fork          //to start all together
      gen.main();
      drv.main();
      mon.main();
      scb.main();
    join
  endtask
  
endclass
  
