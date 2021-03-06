require './bank.rb'

describe Bank do

  it "takes 3 transactions and sticks it in the account" do
    subject.account.newEntry("10-01-2012", 1000.0)
    subject.account.newEntry("13-01-2012", 2000.0)
    subject.account.newEntry("14-01-2012", -500.0)
    expect(subject.account.transactions).to eq([["10-01-2012", "1000.00", "0.00", "1000.00"], ["13-01-2012", "2000.00", "0.00", "3000.00"], ["14-01-2012", "0.00", "500.00", "2500.00"]])
  end

  it "prints the 3 transactions" do
    subject.account.newEntry("10-01-2012", 1000.0)
    subject.account.newEntry("13-01-2012", 2000.0)
    subject.account.newEntry("14-01-2012", -500.0)
    expect do
      subject.printer.entry(subject.account.transactions)
    end.to output("14-01-2012 || || 500.00 || 2500.00\n" "13-01-2012 || 2000.00 || || 3000.00\n"  "10-01-2012 || 1000.00 || || 1000.00\n").to_stdout
  end

  describe ".enter_transaction" do

    it "Adds a transaction into the account" do
      subject.enter_transaction("10-01-2012", 1000.0)
      expect(subject.account.transactions).to eq([["10-01-2012", "1000.00", "0.00", "1000.00"]])
    end

  end

  describe ".print_statement" do

    it "Prints the statement" do
      subject.enter_transaction("10-01-2012", 1000.0)
      subject.enter_transaction("13-01-2012", 2000.0)
      subject.enter_transaction("14-01-2012", -500.0)
      expect do
        subject.print_statement
      end.to output("date || credit || debit || balance\n" "14-01-2012 || || 500.00 || 2500.00\n" "13-01-2012 || 2000.00 || || 3000.00\n"  "10-01-2012 || 1000.00 || || 1000.00\n").to_stdout
    end

  end

end
