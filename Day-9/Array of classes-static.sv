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
  packet pk1[3];
  initial begin
    for(int i=0;i<$size(pk1);i++)begin
      pk1[i]=new();
      pk1[i].display();
  end
  end
endmodule
