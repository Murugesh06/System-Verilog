module dynamic_array3;
  int arr[];
  int id[];
  initial begin
    arr=new[5];
    arr='{1,2,3,4,5};
    id=arr;
    $display("id size =%0d  id=%p",id.size(),id);
    id=new[id.size()+1](id);
    id[id.size()-1]=6;
    $display("id size =%0d  id=%p",id.size(),id);
  end
  endmodule
