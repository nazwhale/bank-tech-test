require 'withdrawal'

describe Withdrawal do
  subject(:withdrawal) { described_class.new(7, 100) }

  describe "#initialize" do
    it 'has the date it was created' do
      today = Date.today.strftime("%d/%m/%Y")
      expect(withdrawal.date).to eq today
    end

    it 'has a specified amount' do
      expect(withdrawal.amount).to eq 7
    end

    it 'has the latest balance' do
      expect(withdrawal.latest_balance).to eq 93
    end
  end
end
