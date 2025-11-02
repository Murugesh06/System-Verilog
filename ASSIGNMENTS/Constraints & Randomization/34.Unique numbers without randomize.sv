module tb;
  int arr[10];
  int temp,i=0;
  bit uniq;
  
  initial begin
    while(i<10)begin
      temp=$urandom_range(1,20);
      uniq=1;
      for(int j=0;j<i;j++)begin
        if(arr[j]==temp)begin
          uniq=0;
          break;
        end
      end
      if(uniq)begin
        arr[i]=temp;
        i++;
      end
    end
    $display("%0p",arr);
  end
endmodule
