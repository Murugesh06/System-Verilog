//static task->the integer variable declared within the task is shared among all invocations of the task and hence thev displayed value should increment for each invocation.

module tb;
  initial display();
  initial display();
  initial display();
  
  task display();
    static integer i=0;
    i=i+1;
    $display("i=%0d",i);
  endtask
  
endmodule
