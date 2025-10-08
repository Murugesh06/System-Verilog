module tb;
  reg [7:0] num;
  des uut();
  initial begin
    $monitor("power of 2: %0d",uut.power_of_2(num));
    num=8'd5;#10
  end
endmodule
