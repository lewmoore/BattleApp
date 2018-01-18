describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1' do
    it 'Game accepts first player' do
      expect(game.player_1).to eq player_1
    end
  end

    describe '#player_2' do
      it 'Game accepts second player' do
        expect(game.player_2).to eq player_2
      end
    end

  describe '#attack' do
    it 'decreases player 2\'s HP' do
      expect(player_2).to receive(:take_damage)
      game.attack
    end


  end

  describe '#current_turn' do
    it 'defaults to player 1 turn first' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch turns' do
    it 'switches the turn' do
      game.switch_turn
      expect(game.current_turn).to eq player_2
    end
  end


end
