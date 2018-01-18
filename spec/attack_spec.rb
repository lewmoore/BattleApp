require 'attack'

describe Attack do
  subject(:attack) { described_class }
  let(:player) { double :player }

  describe '#run' do
    it 'a player takes some damage' do
      expect(player).to receive(:take_damage)
      attack.run(player)
    end
  end
end
