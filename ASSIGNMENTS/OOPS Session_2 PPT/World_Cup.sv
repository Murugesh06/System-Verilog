class worldcup_19;
  int premium_ticket;
  function league_match();
    $display("premium ticket price for league match=%0d",premium_ticket);
  endfunction
endclass

class worldcup_23 extends worldcup_19;
  int golden_ticket;
  function semifinal();
    $display("golden ticket price for semi final match=%0d",golden_ticket);
  endfunction
endclass

module tb;
  initial begin
    worldcup_23 wc=new();
    wc.premium_ticket=1000;
    wc.golden_ticket=2000;
    wc.league_match();
    wc.semifinal();
  end
endmodule
