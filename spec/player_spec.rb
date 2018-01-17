require 'player'

describe Player do
  subject(:player) { described_class.new('Lewis') }

  describe '#name' do
    it 'Returns the name of a player' do
       expect(player.name).to eq 'Lewis'
     end
   end

   describe '#take_damage' do
     it 'reduces the players hit points' do
       expect { player.take_damage }.to change { player.hitpoints }.by(-10)
     end
   end
 end
