  typedef struct packed {
    bit [3:0] mode;
    bit [2:0] cfg;
    bit en;
  }st_reg;
  
 module structure3;
   st_reg ctr_reg;
   initial begin
     ctr_reg='{4'ha,3'h5,0};
     $display("ctr_reg=%p",ctr_reg);
     ctr_reg.mode=4'hf;
      $display("ctr_reg=%p",ctr_reg);
     ctr_reg=4'hfa;
      $display("ctr_reg=%p",ctr_reg);
   end
 endmodule
