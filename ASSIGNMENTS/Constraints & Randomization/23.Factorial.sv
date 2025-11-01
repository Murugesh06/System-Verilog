class factorial;
  rand int num;
  int fact;
  function int factorial(int num);
    int res=1;
    for(int i=1;i<=num;i++)
      res*=i;
    return res;
  endfunction
  constraint c{num inside{[1:6]};}
  function void post_randomize();
    fact=factorial(num);
  endfunction
endclass

module tb;
  factorial f;
  initial begin
    f=new();
    f.randomize();
    $display("num=%0d factorial=%0d",f.num,f.fact);
  end
endmodule
                          
