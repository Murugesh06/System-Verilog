class packet;
  static int ctr;
  function new();
    ctr++;
  endfunction
  static function display();
    $display("ctr=%0d",ctr);
    endfunction
endclass

module tb;
  packet pk[6];
  initial begin 
    for(int i=0;i<$size(pk);i++)begin
      pk[i]=new();
    end
    pk[5].display();
    packet::display();
  end
endmodule
