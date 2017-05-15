require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  describe '#initialize' do
    it 'has an empty history array' do
      expect(statement.history).to eq []
    end
  end

  describe '#add_action' do
    it 'adds a withdrawal/deposit to history' do
      withdrawal = double(:withdrawal)
      statement.add_action(withdrawal)
      expect(statement.history).to include withdrawal
    end
  end
end
