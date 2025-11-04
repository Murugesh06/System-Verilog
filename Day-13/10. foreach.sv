class Consecutive2DArray;
  rand int arr[2][5];
  constraint c{ 
    foreach(arr[i,j]){ arr[i][j]==i*5+j*1;}
  }
      endclass
      
module tb;
  Consecutive2DArray con;
  initial begin
    con=new();
    con.randomize();
    foreach(con.arr[i,j])
      $display("arr[i][j]=%0d",con.arr[i][j]);
  end
endmodule
