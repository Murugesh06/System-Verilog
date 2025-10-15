class scoreboard;
  virtual dff_if vif;
  mailbox mon2scb;
  
  function new(virtual dff_if vif,mailbox mon2scb);
    this.vif=vif;
    this.mon2scb=mon2scb;
  endfunction
  
  task main();
    transaction trans;
    repeat(2)
      begin
        mon2scb.get(trans);
        $display("_______Scoreboard Data________");
        $display("time=%0t clk=%0b rst=%0b d=%0b q=%0b",$time,vif.clk,vif.rst,trans.d,trans.q);
        if(((vif.rst==0)&&(trans.q==trans.d))||((vif.rst==1)&&(trans.q==0)))
          $display("PASS");
        else
          $display("FAIL");
        $display("------------------");
      end
  endtask
  
endclass
        
