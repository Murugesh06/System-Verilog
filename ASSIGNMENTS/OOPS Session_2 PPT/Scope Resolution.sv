class student;
  static int count=0;
  static function void student_count();
    $display("student count=%0d",count);
  endfunction
endclass

module tb;
  initial begin
    student::count=5;
    student::student_count();
  end
endmodule
