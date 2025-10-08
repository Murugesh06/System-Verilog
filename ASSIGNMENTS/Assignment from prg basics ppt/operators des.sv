module des(
  input logic[7:0] a,
  input logic[7:0] b,
  output logic[7:0] sum,
  output logic[7:0] diff,
  output logic[7:0] prod,
  output logic[7:0] and_out);
  
  assign sum=a+b;
  assign diff=a-b;
  assign prod=a*b;
  assign and_out=a&b;
  
endmodule
