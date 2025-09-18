module packed_array1;
  bit [2:0][3:0][7:0] m_data;
  initial begin
    m_data[0]=32'hface_cafe;
    m_data[1]=32'h1234_5678;
    m_data[2]=32'hface_1234;
    foreach(m_data[i])begin
      $display("m_data[%0d]=%h",i,m_data[i]);
    foreach(m_data[i][j])
      $display("m_data[%0d][%0d]=%h",i,j,m_data[i][j]);
  end
  end
endmodule
