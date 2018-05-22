require './bank.rb'

describe "#Bank" do

  it "takes 3 transactions and sticks it in the account" do
    bank = Bank.new
    bank.account.newEntry("10-01-2012", 1000.0)
    bank.account.newEntry("13-01-2012", 2000.0)
    bank.account.newEntry("14-01-2012", -500.0)
    expect(bank.account.transactions).to eq([["10-01-2012", 1000.0, 0, 1000.0], ["13-01-2012", 2000.0, 0, 3000.0], ["14-01-2012", 0, 500.0, 2500.0]])
  end

  it "prints the 3 transactions" do
    bank = Bank.new
    bank.account.newEntry("10-01-2012", 1000.0)
    bank.account.newEntry("13-01-2012", 2000.0)
    bank.account.newEntry("14-01-2012", -500.0)
    expect do
      bank.printer.entry(bank.account.transactions)
    end.to output("10-01-2012 || 1000.0 || 0 || 1000.0\n" "13-01-2012 || 2000.0 || 0 || 3000.0\n" "14-01-2012 || 0 || 500.0 || 2500.0\n").to_stdout
  end


end

# transaction2 = Transaction.new
# transaction2.deposit(2000.0, "13-01-2012")
# transaction3 = Transaction.new
# transaction3.withdraw(500.0, "14-01-2012")
