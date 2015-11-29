require "spec_helper"

describe Player do

	let(:player) { Player.new }
	let(:player_name) { player.name }
	
	it "create random name" do
		expect(player_name).to match(player.name)
	end

	it "initializes with 6 dice" do
		expect(player.dice).to eq(6)
	end
end
