module tb;
  event event_a,event_b;
  initial begin
    fork
      begin
        wait(event_a.triggered);
        $display("[%0t] Event a is triggered",$time);
      end
      begin
        wait(event_b.triggered);
        $display("[%0t] Event b is triggered",$time);
      end
      #20 ->event_a;
      #30 ->event_b;
      begin
       #10 event_b=event_a;
      end
    join
  end
endmodule
