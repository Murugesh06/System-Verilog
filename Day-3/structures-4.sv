typedef struct {
  int data;
  string name;
}my_struct;

module structure4;
  my_struct fixed_array[5];
  my_struct dynamic_array[];
  my_struct assoc_array[int];
  
  initial begin
  $display("FIXED ARRAY DISPLAY");
  for(int i=0;i<5;i++)begin
    fixed_array[i].data=i*10;
    fixed_array[i].name=$sformatf("fixed_%0d",i);
    $display("fixed_array[%0d]: data=%0d,name=%s",i, fixed_array[i].data, fixed_array[i].name);
  end
  
  $display("DYNAMIC ARRAY DISPLAY");
  dynamic_array=new[3];
  dynamic_array[0].data=100;
  dynamic_array[0].name="a";
  dynamic_array[1].data=200;
  dynamic_array[1].name="b";
  dynamic_array[2].data=300;
  dynamic_array[2].name="c";
  for(int i=0;i<dynamic_array.size();i++)begin
    $display("dynamic_array[%0d]: data=%0d,name=%s",i,dynamic_array[i].data,dynamic_array[i].name);
  end
  
  $display("ASSOCIATIVE ARRAY");
  assoc_array[10]='{10,"assoc a"};
  assoc_array[30]='{30,"assoc b"};
  assoc_array[25]='{20,"assoc c"};
  foreach(assoc_array[key])begin
    $display("assoc_array[%0d]: data=%0d,name=%s",key,assoc_array[key].data,assoc_array[key].name);
  end
 
  end
endmodule
