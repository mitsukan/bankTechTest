require './account.rb'

describe `#Account` do

  it "has an empty array to store transactions" do
    account = Account.new
    expect(account.transactions).to eq([])
  end

end
