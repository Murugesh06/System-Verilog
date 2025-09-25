module bit_to_byte;
  real num1;
  time num2;
  initial begin
    num1=8.12;
    $display("number in real type: %0.2f",num1);
    num2=time'(num1);
    $display("number in time type: %0t",num2);
  end
endmodule
