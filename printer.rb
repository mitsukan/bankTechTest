class Printer

  def header
    puts "date || credit || debit || balance"
  end

  def entry(transactions)
    transactions.reverse_each do |entry|
      puts entry
    end

  end

end
