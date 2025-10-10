//Create a class G extended from class F .Add a class constructor to assign the 
value for the class F VARIABLE. 

class F;
  int x;
  function new(int val=0);
    x=val;
  endfunction
endclass

class G extends F;
  function new(int val=0);
    super.new(val);
  endfunction
endclass

module tb;
  initial begin
    G obj=new(25);
    $display("x=%0d",obj.x);
  end
endmodule
