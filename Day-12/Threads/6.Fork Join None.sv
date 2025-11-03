module tb;
	initial begin
      $display ("[%0t] Main Thread: Fork join going to start", $time);
	  fork
          #20 $display ("[%0t] Thread1 has finished", $time);
          #30 $display ("[%0t] Thread3 has finished", $time);
          #10  $display ("[%0t] Thread2 has finished", $time);
    join_none
      $display ("[%0t] Main Thread: Fork join has finished", $time);
	end
endmodule
