//Global task

module gt;
  tb u0();
  initial u0.display();
endmodule

module tb;
  initial display();
  
  task display();
    $display("Hello World!!");
  endtask
  
endmodule
