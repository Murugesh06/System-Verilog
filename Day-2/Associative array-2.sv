module assoc_array2;
  int fruits[][string];
  initial begin
    fruits=new[2];
    fruits[0]='{"aa":1,"bb":2};
    fruits[1]='{"cc":3,"dd":4};
    foreach(fruits[i])
      foreach(fruits[i][fruit])
        $display("fruits[%0d][%s]=%0d",i,fruit,fruits[i][fruit]);
  end
endmodule
