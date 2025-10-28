//UpDown Counter

module des(input clk,rst,m,output reg [3:0] count);
  
  always @(posedge clk)begin
    if(rst) count<=4'b0000;
    else begin
      if(m) count<=count+1;
      else count<=count-1;
    end
  end
  
endmodule
      
