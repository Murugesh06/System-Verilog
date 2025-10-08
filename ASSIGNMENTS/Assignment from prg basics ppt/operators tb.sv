module tb;
  reg [7:0]a,b;
  wire [7:0]sum,diff,prod,and_out;
  
  des uut(a,b,sum,diff,prod,and_out);
  
  initial begin
    $monitor("a=%0d  b=%0d  sum=%0d  diff=%0d  prod=%0d  and=%0b",a,b,sum,diff,prod,and_out);
    a=10;b=10;#10
    a=5;b=4;#10
    $finish();
  end
  
endmodule
