require 'date'

class Deposit

  attr_reader :date, :amount

  def initialize(amount)
    @date = Date.today.strftime("%d/%m/%Y")
    @amount = amount
  end
end
