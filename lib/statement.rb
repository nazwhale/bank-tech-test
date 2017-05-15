class Statement

  attr_reader :history

  def initialize
    @history = []
  end

  def add_transaction(transaction)
    history << transaction
  end

  def print
    history.each do |transaction|
      puts "#{transaction.date} || #{transaction.amount}"
    end
  end
end
