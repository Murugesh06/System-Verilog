module unpacked_array2;
  byte stack[2][4];
  initial begin
    foreach(stack[i])begin
    foreach(stack[i][j])begin
      stack[i][j]=$random;
      $display ("stack[%0d][%0d] = 0x%0h", i, j, stack[i][j]);
    end
    end
     $display("stack=%p",stack);
    end
endmodule
