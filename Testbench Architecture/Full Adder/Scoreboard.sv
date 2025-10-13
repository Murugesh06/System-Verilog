class scoreboard;
  mailbox mon2scb;
  
  function new(mailbox mon2scb);
    this.mon2scb=mon2scb;
  endfunction
  
  task main();
    transaction trans;
    repeat(2)
      begin
        mon2scb.get(trans);
        trans.display("Scoreboard Signals");
        if(((trans.a^trans.b^trans.c)==trans.sum)&&(((trans.a&trans.b)|(trans.b&trans.c)|(trans.c&trans.a))==trans.carry))
          $display("PASS");
        else
          $display("FAIL");
        $display("Transaction Done");
      end
  endtask
  
endclass
