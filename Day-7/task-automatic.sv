//automatic task-> All items inside automatic tasks are allocated dynamically for each invocation and not shared between invocations of the same task running concurrently.

module tb;
  initial display();
  initial display();
  initial display();
  
  task automatic display();
    integer i=0;
    i=i+1;
    $display("i=%0d",i);
  endtask
  
endmodule
