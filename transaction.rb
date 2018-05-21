class Transaction

  attr_reader :balance, :date

  def initialize
    @balance = 0.00
    @date = 0
  end

  def deposit(sum, date)
    @balance += sum
    @date = date
  end

  def withdraw(sum, date)
    @balance -= sum
    @date = date
  end
end
