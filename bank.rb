require './account.rb'
require './transaction.rb'
require './printer.rb'

class Bank

  attr_reader :account, :transaction

  def initialize
    @account = Account.new
    @transaction = Transaction.new
  end

end
