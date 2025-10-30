//static casting
module tb;
  int data;
  initial begin
    data=int'(3.145);
    $display("%0d",int'("Hello World"));
    $display("%0.3f",int'(3.4+2*1.5));
    $display("%0.3f",data);
  end
endmodule
