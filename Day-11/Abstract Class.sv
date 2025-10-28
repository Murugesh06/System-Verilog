virtual class parent;
  int data;
  function new();
    data=32'hface_face;
  endfunction
endclass

class child extends parent;
  function new();
    data=32'hcdde_cdde;
  endfunction
endclass

module tb;
  child c;
  initial begin
    c=new();
    $display("data=%0h",c.data);
  end
endmodule
