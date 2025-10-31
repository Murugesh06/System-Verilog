class random;
  rand bit[60:0] data;
  constraint c{data[31:0]=='1;data[60:32]=='0;}
endclass
      
module tb;
  initial begin
    random r=new();
    r.randomize();
    $display("data=%b",r.data);
  end
endmodule
    
  
