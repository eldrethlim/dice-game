class Results
	attr_accessor :player
	FILTERABLE_ROLLS = [6]

	def initialize(player)
		@player = player
	end

	def run
		puts "#{player.name}'s initial rolls are : #{player.rolls}"
		update_rolls

		puts "New results: #{player.rolls}"
		puts "#{player.name} has #{player.dice} dice remaining."
		puts "--------------------"
	end

	private

	def update_rolls
		player.rolls.reject! { |roll| FILTERABLE_ROLLS.include?(roll) }
		player.dice = player.rolls.count
	end
end

