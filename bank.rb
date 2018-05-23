require './account.rb'
require './transaction.rb'
require './printer.rb'

class Bank

  attr_reader :account, :transaction, :printer

  def initialize
    @account = Account.new
    @transaction = Transaction.new
    @printer = Printer.new
  end

  def enter_transaction(date, amount)
    self.account.newEntry(date, amount)
  end

  def print_statement
    self.printer.header
    self.printer.entry(self.account.transactions)
  end

end
