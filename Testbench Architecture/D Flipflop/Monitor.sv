class monitor;
  virtual dff_if vif;
  mailbox mon2scb;
  
  function new(virtual dff_if vif,mailbox mon2scb);
    this.vif=vif;
    this.mon2scb=mon2scb;
  endfunction
  
  task main();
    transaction trans;
    trans=new();
    repeat(2)
      begin
        @(posedge vif.clk)begin
          trans.d=vif.d;
          #1
          trans.q=vif.q;
          mon2scb.put(trans);
          $display("________Monitor Data________");
          $display("time=%0t clk=%0b rst=%0b d=%0b q=%0b",$time,vif.clk,vif.rst,trans.d,trans.q);
        end
      end
  endtask
  
endclass
