require './bank.rb'

describe "#Bank" do

  it "take a transaction and stick it in account" do
    bank = Bank.new
    bank.transaction_entry(1000.0, "10-01-2012")
    expect(bank.account.transactions).to eq([["10-01-2012", 1000.0, 0, 1000]])

  end

end

# transaction2 = Transaction.new
# transaction2.deposit(2000.0, "13-01-2012")
# transaction3 = Transaction.new
# transaction3.withdraw(500.0, "14-01-2012")
