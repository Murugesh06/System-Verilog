module queues2;
  string fruits[$]='{"apple","orange","lemon","kiwi"};
  initial begin
    $display("citrus fruits=%p",fruits[1:$]);
    fruits[$+1]="pineaple";
    $display("citrus fruits=%p",fruits[1:$]);
    $display("fruits=%p",fruits[1:2]);
  end
endmodule
    
    
    
    
    
    
    
    
    
    
    
    
