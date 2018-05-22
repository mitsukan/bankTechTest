require './printer.rb'

describe "#Printer" do

  describe ".header" do

    it "prints a header for the statement" do
      printer = Printer.new
      expect do
        printer.header
      end.to output("date || credit || debit || balance\n").to_stdout
    end

  end

  describe ".entry" do
    it "puts the entry out onto console" do
      printer = Printer.new
      array = [["14/01/2012 || || 500.00 || 2500.00"], ["14/01/2012 || || 500.00 || 2500.00"]]
      expect do
        printer.entry(array)
      end.to output("14/01/2012 || || 500.00 || 2500.00\n" "14/01/2012 || || 500.00 || 2500.00\n").to_stdout
    end
  end

end
