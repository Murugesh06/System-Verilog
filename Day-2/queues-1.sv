module queues1;
  string fruits[$]='{"orange", "apple", "kiwi"};
  initial begin
    foreach(fruits[i])
      $display("fruits[%0d]=%s",i,fruits[i]);
    $display("fruits=%p",fruits);
    fruits={};//deletion of array
    $display("after deletion fruits=%p",fruits);
  end
endmodule
        
