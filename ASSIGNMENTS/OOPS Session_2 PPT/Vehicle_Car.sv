class vehicle;
  string model_name;
  function new(string model_name);
    this.model_name=model_name;
  endfunction
endclass

class car extends vehicle;
  string color;
  function new(string model_name,string color);
    super.new(model_name);
    this.color=color;
  endfunction
  function display();
    $display("model=%0s color=%0s",model_name,color);
  endfunction
endclass

module tb;
  initial begin
    car c;
    c=new("sedan","red");
    c.display();
  end
endmodule
