module bit_to_byte;
  bit [3:0]num1;
  byte num2;
  initial begin
    num1=4'b1110;
    $display("number in bit type: %0b",num1);
    num2=byte'(num1);
    $display("number in byte type: %b",num2);
  end
endmodule
