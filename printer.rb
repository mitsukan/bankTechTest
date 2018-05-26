class Printer

  def header
    puts "date || credit || debit || balance"
  end

  def entry(transactions)
    transactions.reverse_each do |entry|
      @output = ""
      @incrementor = 0
      entry.each do |item|
        if item == "0.00"
          columizer_corrector
        else
          @output += entry[@incrementor].to_s
        end
        columnizer
        @incrementor += 1
      end
      puts @output
    end

  end

  private

  def columnizer
    if @incrementor < 3
      @output += " || "
    end
  end

  def columizer_corrector
    @output = @output.chop
  end

end
