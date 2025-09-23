module tb;
  bit clk;
  always #10 clk=~clk;
  initial begin
    int counter;
    @(posedge clk);
    for(counter=0;counter<10;counter++)begin
      $display("counter=%0d",counter);
    end
    $display("counter=%0d",counter);
    $finish;
  end
endmodule
