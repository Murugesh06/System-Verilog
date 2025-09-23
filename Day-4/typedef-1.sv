module tb;
  typedef shortint unsigned ushort;
  typedef enum{RED,GREEN,YELLOW}light;
  typedef bit[3:0] fbit;
  initial begin
    ushort data1=32'hface_cafe;
    light data2=GREEN;
    fbit data3=8'hff;
    $display("data1=%0h  data2=%s data3=%0h",data1,data2,data3);
  end
endmodule
