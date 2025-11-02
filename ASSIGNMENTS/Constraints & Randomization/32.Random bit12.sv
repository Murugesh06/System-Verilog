class bit_random;
  rand bit bit12;
  bit[31:0] data=32'hABCDEFFF; 
  function void post_randomize();
    data[12]=bit12;
  endfunction
endclass

module tb;
  bit_random b;
  initial begin
    b=new();
    repeat(3)begin
    b.randomize();
    $display("12th bit=%0b data=%0h",b.bit12,b.data);
    end
  end
endmodule
