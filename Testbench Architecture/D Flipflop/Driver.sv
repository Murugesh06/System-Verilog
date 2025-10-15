class driver;
  transaction trans;
  virtual dff_if vif;
  mailbox gen2drv;
  
  function new(virtual dff_if vif,mailbox gen2drv);
    this.vif=vif;
    this.gen2drv=gen2drv;
  endfunction
  
  task main();
    trans=new();
    repeat (2) 
      begin
        gen2drv.get(trans);
        @(posedge vif.clk) begin
          vif.d<=trans.d;
          $display("______Driver Data_______");
          $display("time=%0t clk=%0b rst=%0b d=%0b q=%0b",$time,vif.clk,vif.rst,trans.d,trans.q);
        end
      end
  endtask
  
endclass
