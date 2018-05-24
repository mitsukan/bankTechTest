class Account

  DEFAULT_BALANCE = 0

  attr_reader :transactions

  def initialize
    @transactions = []
    @balance = DEFAULT_BALANCE
  end

  def newEntry(date, amount)
    @balance += amount
    amounts  = [amount, 0].sort
    @debit = -amounts[0]
    @credit = amounts[1]
    # @credit = 0
    # @debit = 0
    # amount >= 0 ? @credit += amount : @debit -= amount
    @transactions.push([date, sprintf('%.2f', @credit), sprintf('%.2f', @debit), sprintf('%.2f', @balance)])
  end

end
