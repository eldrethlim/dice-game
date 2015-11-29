require "spec_helper"

describe Results do

	before do
		@player = Player.new
		@player.rolls = [1,2,3,4,5,6]
		@results = Results.new(@player).run
	end

	it "remove die roll 6" do
		expect(@player.rolls.include?(6)).to be false
		expect(@player.dice).to eql(5)
	end
end
