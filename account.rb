class Account

  DEFAULT_BALANCE = 0

  attr_reader :transactions

  def initialize
    @transactions = []
    @balance = DEFAULT_BALANCE
  end

  def newEntry(date, amount)
    @balance += amount
    @credit = 0
    @debit = 0
    if amount >= 0
      @credit += amount
    else
      @debit -= amount
    end
    @transactions.push([date, @credit, @debit, @balance])
  end

end
