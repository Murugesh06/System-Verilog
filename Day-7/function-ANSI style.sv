module tb;
 
  initial begin
    $display("sum(5,9)=%0d",sum(5,9));
    $display("mul(5,9)=%0d",mul(5,9));
  end
  
  function byte sum(int x,int y);
    sum=x+y;
  endfunction
  
  function byte mul(int x,int y);
    mul=x*y;
  endfunction
  
endmodule
