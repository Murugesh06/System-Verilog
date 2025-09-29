class parent;
  int addr;
  function new(int addr);
    this.addr=addr;
  endfunction
  function display();
    $display("Parent class-> addr=%0h",addr);
  endfunction
endclass

class child extends parent;
  int data;
  function new(int addr,data);
    super.new(addr);
    this.data=data;
  endfunction
  function display();
    $display("Child class-> addr=%0h  data=%0h",addr,data);
  endfunction
endclass

module tb;
  parent bc;
  child sc;
  initial begin
    bc=new(32'hface_cafe);
    bc.display();
    sc=new(32'hfeed_feed, 32'h1234_5678);
    sc.display();
  end
endmodule
    
