require "game"

describe Game do
  let(:p1) {Player.new("Bill")}
  let(:p2) {Player.new("Ted")}
  subject(:game) {described_class.new(p1, p2)}

  describe "#attack" do
    it "attacks the selected player" do
      expect(p1).to receive(:attacked)
      game.attack(p1)
    end
  end
end