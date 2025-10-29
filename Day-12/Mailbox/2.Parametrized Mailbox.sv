typedef mailbox #(string) s_mbox;

class comp1;
  s_mbox name;
  task send();
    for(int i=0;i<3;i++)begin
      string s=$sformatf("name_%0d",i);
      #1 $display("[%0t]: %s put",$time,s);
      name.put(s);
    end
  endtask
endclass

class comp2;
  s_mbox list;
  task recieve();
    forever begin
      string s;
      list.get(s);
      $display("[%0t]: %s got",$time,s);
    end
  endtask
endclass

module tb;
  s_mbox mbx=new();
  comp1 mcomp1=new();
  comp2 mcomp2=new();
  initial begin
    mcomp1.name=mbx;
    mcomp2.list=mbx;
    fork
      mcomp1.send();
      mcomp2.recieve();
    join
  end
endmodule
  
