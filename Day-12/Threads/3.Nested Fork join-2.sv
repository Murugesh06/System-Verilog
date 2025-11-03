module tb;
	initial begin
      $display ("[%0t] Main Thread: Fork join going to start", $time);
		fork
			fork 
              #50 $display ("[%0t] Thread1_0 finished", $time);
              #70 $display ("[%0t] Thread1_1 finished", $time);
              begin
                #10 $display ("[%0t] Thread1_2 Started", $time);
                #100 $display ("[%0t] Thread1_2 finished", $time);
              end
            join
          	begin
              #5 $display ("[%0t] Thread2 Started", $time);
				#10 $display ("[%0t] Thread2 finished", $time);
            end
			#20 $display ("[%0t] Thread3 finished", $time);
		join
      $display ("[%0t] Main Thread: Fork join has finished", $time);
	end
endmodule
