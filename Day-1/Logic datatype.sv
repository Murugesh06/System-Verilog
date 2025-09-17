module logic_datatype;
  logic[3:0] m_data;
  logic en;
  initial begin
    $display("m_data=%0h en=%0b",m_data,en);
    m_data=4'h8;
    $display("m_data=%0b en=%0b",m_data,en);
  end
endmodule
