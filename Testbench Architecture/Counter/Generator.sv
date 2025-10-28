class generator;
  transaction trans;
  mailbox gen2drv;
  event g;
  
  function new(mailbox gen2drv);
    this.gen2drv = gen2drv;
  endfunction
  
  task main();
    trans = new();
    
    repeat(2)
      begin
      trans.randomize();
      gen2drv.put(trans);
      $display("___GENERATOR CLASS DATA_______  ");
      trans.display();
        @(g);
    end
  endtask
  
endclass
