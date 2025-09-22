module queue4;
  int que[$]={0,1,2,3};
  initial begin
    $display("initial queue:%p",que);
    que.insert(1,1);
    $display("updated queue:%p",que);
    que.delete(3);
    $display("updated queue:%p",que);
    que.push_back(9);
    $display("updated queue:%p",que);
    que.shuffle();
    $display("shuffled queue:%p",que);
    que.reverse();
    $display("reversed queue:%p",que);
  end
endmodule
