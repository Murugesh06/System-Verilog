//Create a class B extended from Class A with 2 different data type variables.
class A;
  int x;
endclass

class B extends A;
real num;
string name;
endclass

module tb;
  initial begin
    B obj=new();
    obj.x=10;
    obj.num=10.2;
    obj.name="chip";
    $display("x = %0d, num = %0.1f, name = %s", obj.x, obj.num, obj.name);
  end
endmodule
