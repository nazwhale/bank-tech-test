require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  describe '#initialize' do
    it 'has an empty history array' do
      expect(statement.history).to eq []
    end

  end
end
