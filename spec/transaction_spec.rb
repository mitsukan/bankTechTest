require "./transaction.rb"

describe ".Transaction" do



  describe "#deposit" do

    it "can deposit 10" do
      transaction = Transaction.new
      transaction.deposit(10.00, "miaow")
      expect(transaction.balance).to eq(10.00)
    end

    it "deposit method has a date" do
      transaction = Transaction.new
      transaction.deposit(10.00, "30-06-2013")
      expect(transaction.date).to eq("30-06-2013")
    end

  end

  describe "#withdraw" do

    it "can withdraw 10" do
      account = Transaction.new
      account.withdraw(10.00)
      expect(account.balance).to eq(-10.00)
    end

  end

end
