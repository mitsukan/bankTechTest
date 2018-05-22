require './account.rb'

describe `#Account` do

  it "has an empty array to store transactions" do
    account = Account.new
    expect(account.transactions).to eq([])
  end

  describe ".newEntry" do
    it "takes information from transaction and store in account" do
      account = Account.new
      amount = 10
      date = "12-04-2020"
      account.newEntry(date, amount)
      expect(account.transactions).to eq([["12-04-2020", 10, 10]])
    end
  end

end
