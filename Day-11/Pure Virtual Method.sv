virtual class parent;
  int data;
  pure virtual function void display();
endclass

class child extends parent;
  virtual function void display();
    $display("parent extended in child class");
  endfunction
endclass

module tb;
  child c;
  initial begin
    c=new();
    c.display();
  end
endmodule
