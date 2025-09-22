module tb;
  int assoc1[string];
  int assoc2[string];
  
  task compare;
    begin
      foreach(assoc1[i])begin
        if(assoc1[i]==assoc2[i]) $display("equal");
        else $display("not equal");
      end
    end
  endtask
  
  initial begin
    assoc1["aa"]=28;
    assoc1["bb"]=38;
    assoc2=assoc1;
    compare;
  end
endmodule
