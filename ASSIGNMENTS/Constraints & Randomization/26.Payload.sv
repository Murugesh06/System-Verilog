class pay_load;
  rand bit[7:0] payload[];
  rand int size;
  constraint c_size{size inside{[4:16]};}
  constraint c_payload{payload.size()==size;}
  constraint c_data{foreach(payload[i]) payload[i] inside{[8'h00:8'hff]};}
endclass

module tb;
  pay_load p;
  initial begin
    p=new();
    repeat(2)begin
    p.randomize();
      $display("payload size=%0d,payload data=%p",p.size,p.payload);
    end
  end
endmodule
