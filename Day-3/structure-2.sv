module structures2;
  typedef struct{
    string fruit;
    int count;
    int expiry;
  }fruits;
  initial begin
    fruits fruit1={"apple",15,8};
    fruits fruit2;
    $display("fruit1=%p fruit2=%p",fruit1,fruit2);
	fruit2=fruit1;
    $display("fruit1=%p fruit2=%p",fruit1,fruit2);
    fruit1.fruit="orange";
    $display("fruit1=%p fruit2=%p",fruit1,fruit2);
  end
endmodule
