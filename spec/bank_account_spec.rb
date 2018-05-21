require "./bank_account.rb"

describe ".BankAccount" do



  describe "#deposit" do

    it "can deposit 10 into the BankAccount" do
      account = BankAccount.new
      account.deposit(10.00)
      expect(account.balance).to eq(10.00)
    end

  end

  describe "#withdraw" do

    it "can withdraw 10 into the BankAccount" do
      account = BankAccount.new
      account.withdraw(10)
      expect(account.balance).to eq(-10)
    end

  end

end
