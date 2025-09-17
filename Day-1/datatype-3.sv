module datatype3;
  byte    			s_byte;   
  byte unsigned  	u_byte;   

  initial begin
    $display ("Size s_byte=%0d, u_byte=%0d", $bits(s_byte), $bits(u_byte));

    #1 s_byte = 'h7F;
       u_byte = 'h7F;
    #1 s_byte += 1;
       u_byte += 1;
    #1 u_byte = 'hFF;
    #1 u_byte += 1;
  end

  initial begin
    $monitor ("[%0t ns] s_byte=%0d u_byte=%0d", $time, s_byte, u_byte);
  end
endmodule
