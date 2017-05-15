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

end
