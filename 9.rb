class BankAccount
  attr_reader :balance
  def initialize(amount:)
    @balance = amount
  end

  def deposit(amount:)
    @balance += amount
  end

  def withdraw(amount:)
    @balance -= amount
  end
end

account = BankAccount.new(amount: 500)
account.deposit(amount: 10)
puts account.balance
account.withdraw(amount: 100)
puts account.balance