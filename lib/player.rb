require 'faker'

class Player
	attr_accessor :name, :dice, :rolls
	INITIAL_DICE = 6

	def initialize
		@name = Faker::Name.name
		@dice = INITIAL_DICE
	end
end

