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
    
//Invoke static function for 'N' number of times and finally disply the value of static variable. 
class H;
 static int count=0;
  function void increment();
    count++;
  endfunction
  static function display();
    $display("count after incrementing=%0d",count);
  endfunction
endclass

module tb;
  initial begin
    int n=5;
    H obj=new();
    $display("initial count=%0d",obj.count);
    for(int i=0;i<n;i++)begin
      obj.increment();
    end
    obj.display();
  end
endmodule
    
