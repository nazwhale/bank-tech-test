require 'date'

class Withdrawal

  attr_reader :date, :amount, :latest_balance

  def initialize(amount, balance)
    @date = Date.today.strftime("%d/%m/%Y")
    @amount = amount
    @latest_balance = balance - amount
  end

end
