class Transaction

  attr_reader :amount, :date

  def initialize
    @amount = 0.00
    @date = 0
  end

  def deposit(sum, date)
    @amount += sum
    @date = date
  end

  def withdraw(sum, date)
    @amount -= sum
    @date = date
  end
end
