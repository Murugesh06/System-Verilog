class scoreboard;
  transaction trans;
  mailbox mon2scb;
  bit [3:0] data_out;
  bit full,emp;
  logic [3:0] queue[0:15];
  logic [4:0] wptr,rptr;
  event g;
  
  function new(mailbox mon2scb);
    this.mon2scb=mon2scb;
  endfunction
  
  function bit is_full();
    return ((wptr[4]!=rptr[4])&&(wptr[3:0]==rptr[3:0]));
  endfunction
  
  function bit is_empty();
    return (wptr==rptr);
  endfunction
  
  task main();
    forever begin
      mon2scb.get(trans);
      $display("SCOREBOARD");
      if(trans.rst)begin
        data_out=0;
        wptr=0;
        rptr=0;
      end
      else begin
        if(trans.en&&!full)begin
          queue[wptr]=trans.data_in;
          wptr=wptr+1'b1;
        end
        else if(!trans.en&&!emp)begin
          data_out=queue[rptr];
          rptr=rptr+1'b1;
        end
      end
      
      full=is_full();
      emp=is_empty();
      
      $display("time=%0t rst=%0b en=%0b data_in=%h data_out=%h full=%0b empty=%0b",$time, trans.rst, trans.en, trans.data_in, trans.data_out, trans.full, trans.empty);
      $display("time=%0t rst=%0b en=%0b data_in=%h data_out=%h full=%0b empty=%0b",$time, trans.rst, trans.en, trans.data_in, data_out, full, emp);
      
      if((data_out==trans.data_out)&&(full==trans.full)&&(emp==trans.empty))
        $display("PASS");
      else
        $display("FAIL");
                 
        ->g;
       end
     endtask
  endclass
