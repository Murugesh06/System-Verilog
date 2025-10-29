module tb;
  event a,b,c;
  initial begin
    #10 ->a;
    #10 ->b;
    #10 ->c;
  end
  initial begin
    wait_order (a,b,c)
      $display("events are executed in order");
    else
      $display("events are not executed in order");
  end
endmodule
