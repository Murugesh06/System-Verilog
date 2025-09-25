module bit_to_byte;
  int num1;
  longint num2;
  initial begin
    num1=8'b10101010;
    $display("number in bit type: %0b",num1);
    num2=longint'(num1);
    $display("number in byte type: %b",num2);
  end
endmodule
