require_relative 'deposit'
require_relative 'withdrawal'
require_relative 'statement'

class Account

  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def make_deposit(amount)
    self.balance += new_deposit(amount)
  end

  def make_withdrawal(amount)
    self.balance -= new_withdrawal(amount)
  end

  private

  attr_writer :balance

  def new_deposit(amount)
    deposit = Deposit.new(amount)
    statement.add_transaction(deposit)
    deposit.amount
  end

  def new_withdrawal(amount)
    withdrawal = Withdrawal.new(amount)
    statement.add_transaction(withdrawal)
    withdrawal.amount
  end

end
