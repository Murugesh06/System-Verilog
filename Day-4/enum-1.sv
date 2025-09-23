module tb;
  typedef enum{TRUE,FALSE}tf;
  initial begin
    tf answer;
    answer=TRUE;
    $display("ANSWER:%s",answer);
  end
endmodule
