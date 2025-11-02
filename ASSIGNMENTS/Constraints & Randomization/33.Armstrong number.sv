class armstrong;
  rand int num;
  constraint c{num inside{[100:200]};}
  function bit is_armstrong(int n);
    int temp=n,sum=0,rem;
    while(temp>0)begin
      rem=temp%10;
      sum+=rem*rem*rem;
      temp/=10;
    end
    return (sum==n);
  endfunction
  function void post_randomize();
    if(is_armstrong(num))
      $display("%0d is an Armstrong number",num);
    else
      $display("%0d is not an Armstrong number",num);
  endfunction
endclass

module tb;
  armstrong a;
  initial begin
    a=new();
    repeat(5)
      a.randomize();
  end
endmodule
