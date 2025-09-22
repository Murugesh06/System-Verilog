module strrev;
  string s1="systemverilog";
  string s2="";
  initial begin
    $display("OG string : %s",s1);
    for(int i=s1.len()-1;i>=0;i--)begin
      s2={s2,s1[i]};
    end
    $display("Reversed string : %s",s2);
  end
endmodule
