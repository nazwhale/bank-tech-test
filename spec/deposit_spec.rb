require 'deposit'

describe Deposit do
  subject(:deposit) { described_class.new(5, 100) }

  describe '#initialize' do
    it 'has the date it was created' do
      today = Date.today.strftime("%d/%m/%Y")
      expect(deposit.date).to eq today
    end

    it 'has a specified amount' do
      expect(deposit.amount).to eq 5
    end

    it 'has the latest balance' do
      expect(deposit.latest_balance).to eq 105
    end
  end

end
