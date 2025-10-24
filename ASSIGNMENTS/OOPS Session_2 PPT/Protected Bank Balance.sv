class BankAccount;
  protected int balance;

  function new(int init_balance = 0);
    balance = init_balance;
  endfunction

  function void deposit(int amount);
    balance += amount;
  endfunction

  function void withdraw(int amount);
    if (amount <= balance)
      balance -= amount;
    else
      $display("Insufficient funds");
  endfunction

  function void display_balance();
    $display("Current Balance = %0d", balance);
  endfunction
endclass

module tb;
  initial begin
    BankAccount acc = new(1000);
    acc.deposit(500);
    acc.withdraw(300);
    acc.display_balance();
  end
endmodule
