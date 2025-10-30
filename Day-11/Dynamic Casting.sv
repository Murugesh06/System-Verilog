//Dynamic Casting
typedef enum{PENNY=1, FIVECENTS=5, DIME=10, QUARTER=25, DOLLAR=100}CENTS;
module tb;
  CENTS MyCents;
  initial begin
    $cast(MyCents,(10+5+10));
    $display("Money=%s",MyCents.name());
    if($cast(MyCents,75))
      $display("Passed");
    else
      $display("Failed");
  end
endmodule
