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
      amount = 10.00
      date = "23-04-2020"
      account.newEntry(date,amount)
      account.newEntry(date,amount)
      expect(account.transactions).to eq([["23-04-2020", 10.0, 10.0], ["23-04-2020", 10.0, 20.0]])
    end
  end

end
