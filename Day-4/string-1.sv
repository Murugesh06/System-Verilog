module tb;
  string s="hello world";
  initial begin
    $display("string : %s",s);
    foreach(s[i])begin
      $display("%s",s[i]);
    end
  end
endmodule
