require "spec_helper"

describe Game do
  
  let(:game) { Game.new.start }
  
  it "winners have 0 dice" do
    game.each do |winner|
      expect(winner.dice).to eq(0)
    end
  end
end
