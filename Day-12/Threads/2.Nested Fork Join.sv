module tb;
	initial begin
      $display ("[%0t] Process Started", $time);
		fork
          fork
			#10 $display ("[%0t] Thread1 finished", $time);
          	begin
              #5 $display ("[%0t] Thread2 finished", $time);
              #10 $display ("[%0t] Thread3 finished", $time);
            end
		join
          #4 $display("[%0t] Thread4 finished",$time);
                       join
      $display ("[%0t] Main Thread: Fork join has finished", $time);
	end
endmodule
