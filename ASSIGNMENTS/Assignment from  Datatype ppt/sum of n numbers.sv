module tb;
  int arr[];
  int result;
  
  initial begin
   arr=new[5];
    arr='{2,2,2,2,2};
    result=sum_of_n_nos(arr);
    $display("sum=%0d",result);
  end

  function int sum_of_n_nos(int data[]);
    static int sum=0;
    foreach(data[i])begin
      sum=sum+data[i];
    end
    return sum;
  endfunction
 endmodule
