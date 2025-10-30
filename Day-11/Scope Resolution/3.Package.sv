package pkg;
typedef enum bit{FALSE,TRUE} e_bool;
endpackage

module tb;
  bit val;
  initial begin
    val=pkg::TRUE;
    $display("val=%0b",val);
  end
endmodule
