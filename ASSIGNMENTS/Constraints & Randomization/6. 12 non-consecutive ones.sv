class random;
  rand bit[31:0] data;
  constraint c{
    $countones(data)==12;
    foreach(data[i])
      if(i<31)
        !(data[i]&&data[i+1]);
  }
endclass

module tb;
  random r;
  initial begin
    r=new();
    r.randomize();
    $display("data=%0b",r.data);
  end
endmodule
