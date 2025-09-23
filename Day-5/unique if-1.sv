module tb;
  int num=4;
  initial begin
    priority if(num==3)
      $display("num=3");
    else if(num==5)
      $display("num=5");
    else
      $display("num is neither 3 nor 5");
  
    priority if(num==3)
      $display("num=3");
    else if(num==5)
      $display("num=5");
  end
endmodule
