module string1;
  string s1="12345";
  integer i,sum;
  initial begin
    $display("given string : %s",s1);
    i=s1.atoi();
    $display("string converted to integer:%0d",i);
    sum=i+100;
    $display("sum=%0d",sum);
  end
endmodule
