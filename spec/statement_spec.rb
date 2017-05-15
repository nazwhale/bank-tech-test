require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:deposit) { double :deposit, amount: 10, date: "13/05/2017" }
  let(:withdrawal) { double :deposit, amount: 7, date: "15/05/2017" }

  describe '#initialize' do
    it 'has an empty history array' do
      expect(statement.history).to eq []
    end
  end

  describe '#add_transaction' do
    it 'adds a transaction to history' do
      statement.add_transaction(withdrawal)
      expect(statement.history).to include withdrawal
    end
  end

  # describe '#print' do
  #   it 'returns the date and amount of the transaction' do
  #     statement.add_transaction(deposit)
  #     STDOUT.should_receive(:puts).with('13/05/2017 || 10')
  #     expect(STDOUT).to include deposit.amount && deposit.date
  #     statement.print
  #   end

    # it 'prints all transactions' do
    #   statement.add_transaction(deposit)
    #   statement.add_transaction(withdrawal)
    #   expect(STDOUT).to include deposit.amount && withdrawal.amount
    # end
  # end
end
