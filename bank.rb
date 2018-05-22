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

end
