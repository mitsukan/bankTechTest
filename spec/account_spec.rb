require './account.rb'

describe Account do


  it "has an empty array to store transactions" do
    expect(subject.transactions).to eq([])
  end

  describe ".newEntry" do
    it "takes information from transaction and store in account" do
      amount = 10.00
      date = "12-04-2020"
      subject.newEntry(date, amount)
      expect(subject.transactions).to eq([["12-04-2020", "10.00", "0.00", "10.00"]])
    end

    it "takes 2 transactions and calculates balance correctly" do
      amount = 120.00
      date = "23-04-2020"
      subject.newEntry(date,amount)
      subject.newEntry(date,amount)
      expect(subject.transactions).to eq([["23-04-2020", "120.00", "0.00", "120.00"], ["23-04-2020", "120.00", "0.00", "240.00"]])
    end

    it "differentiates between credit and debit amount" do
      positive_amount = 110.00
      negative_amount = -50.00
      date = "04-04-0404"
      subject.newEntry(date, positive_amount)
      subject.newEntry(date, negative_amount)
      expect(subject.transactions). to eq([["04-04-0404", "110.00", "0.00", "110.00"],["04-04-0404", "0.00", "50.00", "60.00"]])
    end

  end

end
