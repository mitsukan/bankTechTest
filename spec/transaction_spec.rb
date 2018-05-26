require "./transaction.rb"

describe Transaction do

  describe "#deposit" do

    it "can deposit 10" do
      subject.deposit(10.00, "miaow")
      expect(subject.amount).to eq(10.00)
    end

    it "deposit method has a date" do
      subject.deposit(10.00, "30-06-2013")
      expect(subject.date).to eq("30-06-2013")
    end

  end

  describe "#withdraw" do

    it "can withdraw 10" do
      subject.withdraw(10.00, "moo")
      expect(subject.amount).to eq(-10.00)
    end

    it "withdraw method has a date" do
      subject.withdraw(10, "01-07-2014")
      expect(subject.date).to eq("01-07-2014")
    end

  end

end
