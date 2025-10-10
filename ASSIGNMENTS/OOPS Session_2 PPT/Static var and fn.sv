//Create a class H with a static variable and a static function and increment the value of the static variable. 
class H;
 static int count=0;
  function void increment();
    count++;
  endfunction
  static function display();
    $display("count=%0d",count);
  endfunction
endclass

module tb;
  initial begin
    H obj=new();
    obj.increment();
    obj.display();
    obj.increment();
    obj.display();
  end
endmodule
    
