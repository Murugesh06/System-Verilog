module tb;
  bit clk;
  always #10 clk=~clk;
  initial begin
    int counter;
    @(posedge clk);
    while(counter<10)begin
      $display("counter=%0d",counter);
      counter++;
    end
    $finish();
  end
endmodule
