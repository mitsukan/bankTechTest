require './printer.rb'

describe "#Printer" do

  describe ".header" do
    printer = Printer.new
    expect(printer.header).to eq("date || credit || debit || balance")
  end

end
