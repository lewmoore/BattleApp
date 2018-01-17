require 'player'

describe Player do
  subject(:player) { described_class.new('Lewis') }

  describe '#name' do
    it 'Returns the name of a player' do
       expect(player.name).to eq 'Lewis'
     end
   end
 end
