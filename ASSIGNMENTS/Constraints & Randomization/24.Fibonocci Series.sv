class fibonocci;
  rand int n;
  int fibo[20];
  constraint c{n inside{[3:10]};}
  function void post_randomize();
    fibo[0]=0;
    fibo[1]=1;
    for(int i=2;i<n;i++)begin
      fibo[i]=fibo[i-1]+fibo[i-2];
    end
  endfunction
endclass

module tb;
  fibonocci f;
  initial begin
    f=new();
    f.randomize();
    $display("n=%0d->Fibonocci Series=%0p",f.n,f.fibo[0:9]);
  end
endmodule
