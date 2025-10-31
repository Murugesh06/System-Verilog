class random;
  rand bit[31:0] data;
  constraint c{$countones(data)==1;}
                        
endclass
      
module tb;
  initial begin
    random r=new();
    r.randomize();
    $display("data=%b",r.data);
  end
endmodule
    
  
