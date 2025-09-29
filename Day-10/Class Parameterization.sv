class sample #(type t=int);
  t item;
  function t add(t a);
    return item+a;
  endfunction
endclass

module tb;
  sample st1;
  sample #(bit[3:0]) st2;
  sample #(real) st3;
  initial begin
    st1=new;
    st2=new;
    st3=new;
    st1.item=-50;
    $display("st1: item + a= %0d",st1.add(10));
    st2.item=4'h3;
    $display("st2: item + a= %0d",st2.add(10));
    st3.item=50;
    $display("st3: item + a= %0d",st3.add(10));
  end
endmodule
