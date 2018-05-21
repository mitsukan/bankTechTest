class Transaction

  attr_reader :balance

  def initialize
    @balance = 0.00
  end

  def deposit(sum)
    @balance += sum
  end

  def withdraw(sum)
    @balance -= sum
  end
end
