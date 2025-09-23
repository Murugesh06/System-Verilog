module tb;
  initial begin
    int ctr;
    do begin
      $display("ctr=%0d",ctr);
      ctr++;
    end
    while(ctr==0);
      end
      endmodule
