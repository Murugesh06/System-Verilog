module tb;
  string s1="hello world";
  string s2="hello INDIA";
  initial begin
    $display("string : %s",s1);
    $display("string size : %0d",s1.len());
    s1.putc(5,"!");
    $display("after putc : %s",s1);
    $display("getc at 0 : %s",s1.getc(0));
    $display("lowercase:%s",s1.tolower());
    $display("uppercase:%s",s1.toupper());
    $display("substring:%s",s1.substr(2,5));
    $display("comparison result:%0d",s1.compare(s2));
    end
   endmodule             
                  
