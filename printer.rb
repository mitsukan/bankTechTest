class Printer

  def header
    puts "date || credit || debit || balance"
  end

  def entry(transactions)
    transactions.reverse_each do |entry|
      @output = ""
      @incrementor = 0
      entry.each do |item|
        @output += entry[@incrementor].to_s
        if @incrementor < 3
          @output += " || "
          @incrementor += 1
        else
          break
        end
      end
      puts @output
    end

  end

end
