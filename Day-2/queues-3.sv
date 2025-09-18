module queues3;
string fruits[$] = {"apple", "pear", "mango", "banana"};
initial begin
  $display("initial string=%p",fruits);
  $display("queue size=%0d",fruits.size());
  fruits.insert(1,"orange");
  $display("new string=%p",fruits);
  fruits.delete(3);
  $display("new string=%p",fruits);
  fruits.pop_front();
  $display("new string=%p",fruits);
  fruits.pop_back();
  $display("new string=%p",fruits);
  fruits.push_front("apricot");
  $display("new string=%p",fruits);
  fruits.push_back("strawberry");
  $display("new string=%p",fruits);;
end
endmodule
