require 'account'

describe Account do
  subject(:account) { described_class.new }

  describe "#initialize" do
    it "has a balance of zero" do
      expect(account.balance).to eq 0
    end
  end

  describe "#deposit" do
    it "adds deposit to balance" do
      account.deposit(10)
      expect(account.balance).to eq 10
    end
  end

  describe "#withdrawal" do
    it "removes withdrawal from balance" do
      account.deposit(10)
      account.withdrawal(3)
      expect(account.balance).to eq 7
    end
  end

end
