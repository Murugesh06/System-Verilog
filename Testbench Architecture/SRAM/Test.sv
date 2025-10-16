`include "environment.sv"

program test(inf vif);
  environment env;
  
  initial begin
    env = new(vif);
    env.test_run();
  end
  
endprogram
