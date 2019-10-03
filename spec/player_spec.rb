require 'player'

describe Player do
  subject(:player1) {described_class.new("Bill")}

  describe "#name" do
    it "returns the players name" do
      expect(player1.name).to eq "Bill"
    end
  end
  describe '#hit_points' do
    it 'returns the hit points of the player' do
      expect(player1.hit_points).to eq 60
    end
    it 'returns the hit points of the player after being hit' do
      player2 = Player.new("Ted")
      player2.attacked
      expect(player2.hit_points).to eq 50
    end
  end
end