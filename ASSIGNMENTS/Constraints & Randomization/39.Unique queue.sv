class diff_queue;
  rand int q1[$];
  rand int q2[$];
  rand int size;
  constraint c_size{size inside{[3:6]};q1.size()==size;q2.size()==size;}
  constraint c_range{foreach(q1[i]) q1[i] inside{[1:20]};
                     foreach(q2[i]) q2[i] inside{[1:20]};
                    }
  constraint c_condition{foreach(q1[i]) foreach(q2[j]) q1[i]!=q2[j];}
endclass

module tb;
  diff_queue d;
  initial begin
    d=new();
    repeat(3)begin
      d.randomize();
      $display("q1=%0p q2=%0p",d.q1,d.q2);
    end
  end
endmodule
