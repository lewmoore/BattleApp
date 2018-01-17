describe Game do

  subject(:game) { described_class.new }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'decreases players HP' do
      expect(player_2).to receive(:take_damage)
      game.attack(player_2)
    end
  end
end
