module des;
  function [7:0] power_of_2;
    input [7:0] num;
    begin
      if(num!=0)begin
        if(num&(num-1)==0)
          power_of_2=1'd1;
        else
          power_of_2=1'd0;
      end
      else
        power_of_2=1'd0;
    end
  endfunction
endmodule
