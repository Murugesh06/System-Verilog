`include "environment.sv"

program test(dff_if inf);
  environment env;
  
  initial begin
    env=new(inf);
    env.test_run();
  end
  
endprogram
