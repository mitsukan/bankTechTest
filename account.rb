class Account

  DEFAULT_BALANCE = 0

  attr_reader :transactions

  def initialize
    @transactions = []
    @balance = DEFAULT_BALANCE
  end

  def newEntry(date, amount)
    @balance += amount
    @transactions.push([date, amount, @balance])
  end

end
