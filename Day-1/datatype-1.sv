module datatype1;
  bit [3:0] var_a;
  logic[3:0] var_b;
  initial begin
    var_b=3'b01zx;
    var_a=var_b;
    $display("var_a=%b  var_b=%b",var_a,var_b);
  end
endmodule
