require "./bank_account.rb"

describe ".BankAccount" do



  describe "#deposit" do

    it "can deposit 10 into the BankAccount" do
      account = BankAccount.new
      account.deposit(10)
      expect(account.balance).to eq(10)
    end

  end


end
