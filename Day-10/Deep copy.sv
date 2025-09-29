class header;
  int id;
  function new(int id);
    this.id=id;
  endfunction
  function showid();
    $display("id=%0d",id);
  endfunction
endclass

class packet;
  int data;
  int addr;
  header hdr;
  function new(int data,int addr,int id);
    hdr=new(id);
    this.data=data;
    this.addr=addr;
  endfunction
  function display(string name);
    $display("%s:id=%0d,data=%0d,addr=%0d",name,hdr.id,data,addr);
  endfunction
  function copy(packet p);
    this.data=p.data;
    this.addr=p.addr;
    this.hdr.id=p.hdr.id;
  endfunction
endclass

module tb;
  packet pk1,pk2;
  initial begin
    pk1=new(10,20,30);
    pk1.display("pk1");
    pk2=new(1,2,3);
    pk2.copy(pk1);
    pk2.display("pk2");
    pk1.hdr.id=11;
    pk1.data=21;
    pk1.addr=31;
    pk1.display("pk1");
    pk2.display("pk2");
  end
endmodule
