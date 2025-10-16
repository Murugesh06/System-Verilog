class transaction;
  bit clk;
  bit rst;
  bit en;
  randc bit [3:0]addr;
  randc bit [7:0]data_in;
  bit [7:0]data_out;
  
  constraint addr_cons{addr inside {[5:7]};}
  constraint data_in_cons{data_in inside {[0:127]};}
  
endclass
