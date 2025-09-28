class packet;
  bit [2:0] header;
  bit encode;
  bit [2:0] mode;
  bit stop;
  
  function new(bit [2:0] header=3'h1,bit [2:0] mode=5);
    this.header=header;
    this.encode=0;
    this.mode=mode;
    this.stop=1;
  endfunction
  
  function display();
    $display("Header=0x%0h,Encode=%0b,Mode=%0d,Stop=%0b",this.header,this.encode,this.mode,this.stop);
  endfunction
  
endclass

module tb;
  packet pk1,pk2;
  initial begin
    pk1=new(3'h2,2'h3);
    pk1.display();
    pk2=new();
    pk2.display();
  end
endmodule
