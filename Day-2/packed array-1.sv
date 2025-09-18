module packed_array1;
  bit [7:0] m_data;
  initial begin
    m_data=8'hfa;
    $display("m_data=%b",m_data);
  end
endmodule
