class generator;
  transaction trans;
  virtual dff_if vif;
  mailbox gen2drv;
  event g;
  
  function new(virtual dff_if vif,mailbox gen2drv);
    this.vif=vif;
    this.gen2drv=gen2drv;
  endfunction
  
  task main();
    trans=new();
    repeat(2) 
      begin
    trans.randomize();
    gen2drv.put(trans);
    $display("Generator Data");
        $display("time=%0t clk=%0b rst=%0b d=%0b q=%0b",$time,vif.clk,vif.rst,trans.d,trans.q);
        @(g);
      end
  endtask
  
endclass
