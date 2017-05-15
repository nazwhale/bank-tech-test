require 'deposit'

class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def make_deposit(amount)
    self.balance += new_deposit(amount)
  end

  def make_withdrawal(amount)
    self.balance -= new_withdrawal(amount)
  end

  def new_deposit(amount)
    deposit = Deposit.new(amount)
    deposit.amount
  end

  def new_withdrawal(amount)
    withdrawal = Withdrawal.new(amount)
    withdrawal.amount
  end

  private

  attr_writer :balance

end
