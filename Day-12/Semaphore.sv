module tb;
  semaphore sem;
  initial begin
    sem=new(1);
    fork 
      personA();
      personB();
      #25 personA();
    join_none
  end
  task getkey(bit [1:0] id);
    $display("[%0t] Trying to get key [%0d]",$time,id);
    sem.get(1);
    $display("[%0t] Key recieved [%0d]",$time,id);
  endtask
  task putkey(bit [1:0] id);
    $display("[%0t] Trying to put key back [%0d]",$time,id);
    sem.put(1);
    $display("[%0t] Key put back [%0d]",$time,id);
  endtask
  task personA();
    getkey(1);
    #20 putkey(1);
  endtask
  task personB();
    #5 getkey(2);
    #10 putkey(2);
  endtask
endmodule
  
