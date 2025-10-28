class monitor;
  transaction trans;
  virtual inf vif;
  mailbox mon2scb;
  
  function new(virtual inf vif,mailbox mon2scb);
    this.vif=vif;
    this.mon2scb=mon2scb;
  endfunction
  
  task main();
    trans=new();
    forever begin
        @(posedge vif.clk)begin
        trans.clk=vif.clk;
        trans.rst=vif.rst;
        trans.en=vif.en;
        trans.data_in=vif.data_in;
        #1
        trans.data_out=vif.data_out;
        trans.full=vif.full;
        trans.empty=vif.empty;
          $display("MONITOR DATA");
          $display("time=%0t clk=%0b rst=%0b en=%0b data_in=%0h data_out=%0h full=%0b empty=%0b",$time,trans.clk,trans.rst,trans.en,trans.data_in,trans.data_out,trans.full,trans.empty);
        end
      end
  endtask
  
endclass
