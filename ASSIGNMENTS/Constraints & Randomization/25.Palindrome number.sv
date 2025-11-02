class palindrome;
  rand int num;
  constraint c{num inside{[100:999]};}
  function bit is_palindrome(int n);
    int rev=0,temp=n;
    while(temp>0)begin
      rev=rev*10+(temp%10);
      temp/=10;
    end
    return (rev==num);
  endfunction
  function void post_randomize();
    while(!is_palindrome(num))
      this.randomize();
  endfunction
endclass

  module tb;
    palindrome p;
    initial begin
      p=new();
      repeat(3)begin
      p.randomize();
      $display("Palindrome number=%0d",p.num);
      end
    end
  endmodule
