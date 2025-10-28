module des(input clk,rst,en,
           input [3:0] data_in,
           output reg [3:0] data_out,
           output full,empty);
  
  reg [4:0] write_ptr,read_ptr;
  reg [3:0] fifo[0:15];
  
  always @(posedge clk)begin
    if(rst)begin
      data_out<=4'b0;
      write_ptr<=0;
      read_ptr<=0;
    end
    
    else begin
      if(en & !full)begin
        fifo[write_ptr]<=data_in;
        write_ptr<=write_ptr+1;
      end
      else if(!en & !empty)begin
        data_out<=fifo[read_ptr];
        read_ptr<=read_ptr+1;
      end
    end
  end
  
  assign full=(write_ptr[4]!=read_ptr[4])&&(write_ptr[3:0]==read_ptr[3:0]);
  assign empty=(write_ptr==read_ptr);
  
endmodule
