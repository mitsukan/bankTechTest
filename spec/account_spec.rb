require './account.rb'

describe `#Account` do

  it "has an empty array to store transactions" do
    account = Account.new
    expect(account.transactions).to eq([])
  end

  describe ".newEntry" do
    it "takes information from transaction and store in account" do
      account = Account.new
      amount = 10.00
      date = "12-04-2020"
      account.newEntry(date, amount)
      expect(account.transactions).to eq([["12-04-2020", 10.0, 10.0]])
    end

    it "takes 2 transactions and calculates balance correctly" do
      account = Account.new
      amount = 120.00
      date = "23-04-2020"
      account.newEntry(date,amount)
      account.newEntry(date,amount)
      expect(account.transactions).to eq([["23-04-2020", 120.0, 120.0], ["23-04-2020", 120.0, 240.0]])
    end

    it "differentiates between credit and debit amount" do
      account = Account.new
      positive_amount = 110.00
      negative_amount = -50.00
      date = "04-04-0404"
      account.newEntry(date, positive_amount)
      account.newEntry(date, negative_amount)
      expect(account.transactions). to eq([["04-04-0404", 110.0, 0, 110.0],["04-04-0404", 0, 50.0, 60.0]])
    end

  end

end
