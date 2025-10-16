class scoreboard;
  transaction trans;
  mailbox mon2scb;
  bit [7:0]out;
  bit [7:0]mem_scb[15:0];
  event g;
  
  function new(mailbox mon2scb);
    this.mon2scb = mon2scb ;
  endfunction
  
  task main();
    repeat(2)
      begin
      mon2scb.get(trans);
      $display("	SCOREBOARD CLASS DATA	");
      $display("time=%0t,addr=%h,data_in=%h,data_out=%h",$time,trans.addr,trans.data_in,trans.data_out);
      
      if(trans.rst)
    		out = 8'b0 ;
  	  else begin
        if(trans.en)
           mem_scb[trans.addr] = trans.data_in ;
    	else
          out= mem_scb[trans.addr] ;
  	  end
            
      
      if(out == trans.data_out)
        $display("		PASS		");
      else
        $display("		FAIL		");
        ->g;
    end
  endtask
  
endclass
