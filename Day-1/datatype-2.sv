module datatype2;
  bit [3:0]var_a;
  bit [3:0]var_b;
  initial begin
    $display("initial value:var_a=%b var_b=%b",var_a,var_b);
    var_a=1;
    var_b=4'hf;
    $display("current value:var_a=%b var_b=%b",var_a,var_b);
  end
endmodule
