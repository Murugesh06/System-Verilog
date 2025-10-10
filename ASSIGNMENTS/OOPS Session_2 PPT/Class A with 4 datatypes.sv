//class with 4 different datatypes
class A;
  int a;
  real b;
  string c;
  logic [1:0] d;
endclass

module tb;
  initial begin
    A obj=new();
    obj.a=1;
    obj.b=2;
    obj.c="name";
    obj.d=3;
    $display("a=%0d b=%0.1f c=%s d=%0b",obj.a,obj.b,obj.c,obj.d);
  end
endmodule
