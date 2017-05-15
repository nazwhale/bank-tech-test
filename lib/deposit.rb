require 'date'

class Deposit

  attr_reader :date, :amount, :latest_balance

  def initialize(amount, balance)
    @date = Date.today.strftime("%d/%m/%Y")
    @amount = amount
    @latest_balance = balance + amount
  end

  #format date method and call Time in init.

end
