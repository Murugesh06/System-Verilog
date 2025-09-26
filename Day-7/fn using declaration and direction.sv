module tb;
 
  initial begin
    int res;
    $display("sum(5,9)=%0d",sum(5,9));
    $display("mul(5,9)=%0d",mul(5,9,res));
    $display("res=%0d", res);
  end
  
  function byte sum;
    input int x,y;
    sum=x+y;
  endfunction
  
  function byte mul(input int x,y,output int res );
    return x*y;
    res=x*y+1;
  endfunction
  
endmodule
