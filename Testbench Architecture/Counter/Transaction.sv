class transaction;
  rand bit rst;
  rand bit m;
  bit [3:0] count;
  
  constraint rst_cons{rst dist{0:=10,1:=10};};
  
  function display();
    $display("$time = %0t rst = %0b M = %0b,count = %0b",$time,rst,m,count);
  endfunction
  
endclass
