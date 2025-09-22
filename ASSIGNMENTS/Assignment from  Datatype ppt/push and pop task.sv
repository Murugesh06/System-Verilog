module tb;
  int q[$];
  
  task push_data;
    begin
      q.push_front(5);
      q.push_back(10);
    end
  endtask
  
  task pop_data;
    begin
     q. pop_front();
     q. pop_back();
    end
  endtask
  
  initial begin
    q={1,2,3,4};
    $display("OG queue : %0p",q);
    push_data();
    $display("queue after data push : %0p",q);
    pop_data();
    $display("queue after data pop : %0p",q);
  end
endmodule
