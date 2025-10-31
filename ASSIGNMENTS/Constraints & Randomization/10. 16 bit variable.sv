class random;
  rand bit[15:0] data;
  constraint c{
    foreach (data[i]){!(data[i]&&data[i+1])};
                        }
endclass
      
module tb;
  initial begin
    random r=new();
    r.randomize();
    $display("data=%b",r.data);
  end
endmodule
    
  
