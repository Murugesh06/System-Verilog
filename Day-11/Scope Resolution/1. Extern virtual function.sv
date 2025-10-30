class sample;
  int data;
  extern virtual function void display();
endclass
    function void sample::display();
      
      $display("data=%0h",data);
    endfunction
    module tb;
      sample sam=new();
      initial begin
        sam.data=32'hc0de_c0de;
        sam.display();
      end
    endmodule
