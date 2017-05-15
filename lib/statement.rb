class Statement

  attr_reader :history

  def initialize
    @history = []
  end

  def add_transaction(transaction)
    history << transaction
  end

  def print
    puts "date || credit || debit || balance"
    history.each do |transaction|
      if transaction.class == Deposit
        puts "#{transaction.date} || #{transaction.amount} || || #{transaction.latest_balance}"
      else
        puts "#{transaction.date} || || #{transaction.amount} || #{transaction.latest_balance}"
      end
    end
  end

end



