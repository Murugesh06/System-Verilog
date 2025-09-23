module tb;
  string s="hello world";
  initial begin
    $display("OG string: %s", s);
    $display("subsring: %s",s.substr(0,4));
  end
endmodule
