module structures1;
  struct{
    string fruit;
    int count;
    int expiry;
  }fruits;
  initial begin
    fruits.fruit="apple";
    fruits.count=15;
    fruits.expiry=8;
    $display("fruits=%p",fruits);
  end
endmodule
