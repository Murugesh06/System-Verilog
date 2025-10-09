class BankAccount;
  protected real balance;
  function new(real initial_balance=0);
    balance=initial_balance;
  endfunction
  function deposit(real amount);
    balance+=amount;
  endfunction
  function withdraw(real amount);
    if(amount<=balance)
      balance-=amount;
    else
      $display("Insufficient Balance!!");
  endfunction
endclass

class SavingsAccount extends BankAccount;
  function withdraw(int amount,real interest);
    super.withdraw(amount);
    balance+=balance*interest;
  endfunction
  function display_balance;
    $display("current balance=%0.2f",balance);
  endfunction
endclass

module tb;
  initial begin
    SavingsAccount s=new();
    s.deposit(2000);
    s.withdraw(1000,0.02);
    s.display_balance();
  end
endmodule
  
