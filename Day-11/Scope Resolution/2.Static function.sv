class sample;
  static int data;
  static function void display();
    $display("data=%0h",data);
  endfunction
endclass

module tb;
  sample s;
  initial begin
  sample::data=32'hface_face;
  sample::display();
  s=new();
    $display("s_data=%0h",s.data);
  end
endmodule
