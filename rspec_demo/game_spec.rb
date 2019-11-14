# demo from https://relishapp.com/rspec/docs/gettingstarted
# game_spec.rb
require "./game"

RSpec.describe Game do
  describe "#score" do
    it "returns a score of 100 for 10 pins knocked down in 10 frames" do
      game = Game.new
      game.score
      10.times { game.roll(10) }
      expect(game.score).to eq(100)
    end
  end
end
