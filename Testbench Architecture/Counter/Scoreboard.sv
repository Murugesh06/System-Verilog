class scoreboard;
  transaction trans;
  mailbox mon2scb;
  bit[3:0]ctr;
  event g;
  
  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction
  
  task main();
    repeat(2)
      begin
      mon2scb.get(trans);
      $display("______  SCOREBOARD CLASS DATA______  ");
      trans.display();
      
      if(trans.rst)
        	ctr = 4'b0;
      else begin
        if(trans.m)	ctr=ctr+1;
        else ctr = ctr-1 ;
      end
      
      
        if(ctr == trans.count)
          $display("PASS");
      else
        $display("FAIL");
        
        ->g;

    end   
  endtask
  
endclass
