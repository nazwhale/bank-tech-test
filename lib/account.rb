class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    self.balance += amount
  end

  def withdrawal(amount)
    self.balance -= amount
  end

  private

  attr_writer :balance

end
