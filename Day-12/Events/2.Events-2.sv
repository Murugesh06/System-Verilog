module tb;
  event event_a;
  initial begin
    #20 ->event_a;
    $display("Thread1 triggered");
  end
  initial begin
    $display("Thread2 waiting to be triggered");
    #20 @(event_a);
    $display("Thread2 triggered");
  end
  initial begin
    $display("Thread3 waiting to be triggered");
    #20 wait(event_a.triggered);
    $display("Thread3 triggered");
  end
endmodule

//Thread2 never received a trigger, because of the race condition between @ and -> operations.
