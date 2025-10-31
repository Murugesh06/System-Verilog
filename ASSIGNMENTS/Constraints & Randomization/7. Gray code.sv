class gray;
  rand bit[3:0] binary;
  bit[3:0] gray;
endclass

module tb;
  gray g;
  initial begin
    g=new();
    g.randomize();
    g.gray=g.binary^(g.binary>>1);
    $display("binary code=%0b gray code=%0b",g.binary,g.gray);
  end
endmodule
