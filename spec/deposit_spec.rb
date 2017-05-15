require 'deposit'
require 'date'

describe Deposit do
  subject(:deposit) { described_class.new }

  describe '#initialize' do
    it 'has the date it was created' do
      today = Date.today.strftime("%d/%m/%Y")
      expect(deposit.date).to eq today
    end
  end

end
