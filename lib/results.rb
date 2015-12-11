class Results
  class << self
    FILTERABLE_ROLLS = [6]

    def fetch(player)
      puts "#{player.name}'s initial rolls are : #{player.rolls}"
      update_rolls(player)

      puts "New results: #{player.rolls}"
      puts "#{player.name} has #{player.dice} dice remaining."
      puts "--------------------"
    end

    private

    def update_rolls(player)
      player.rolls.reject! { |roll| FILTERABLE_ROLLS.include?(roll) }
      player.dice = player.rolls.count
    end
  end
end
