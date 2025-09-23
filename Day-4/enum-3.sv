typedef enum{RED,YELLOW,GREEN,ORANGE}color;
module tb;
  initial begin
    color c;
    c=YELLOW;
    $display("first element: %s",c.first());
    $display("last element: %s",c.last());
    $display("next element: %s",c.next());
    $display("previous element: %s",c.prev());
    $display("total elements: %0d",c.num());
    $display("color name: %s",c.name());
  end
endmodule
