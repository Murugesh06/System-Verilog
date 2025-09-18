module unpacked_array3;
  bit [3:0][7:0] 	stack [2][4]; 		

	initial begin
		foreach (stack[i])
          foreach (stack[i][j]) begin
            stack[i][j] = $random;
            $display ("stack[%0d][%0d] = 0x%0h", i, j, stack[i][j]);
			end
		$display ("stack = %p", stack);

        $display("stack[0][0][2] = 0x%0h", stack[0][0][2]);
	end
endmodule
