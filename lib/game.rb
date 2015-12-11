require './lib/player'
require './lib/dice'
require './lib/results'

class Game
  NUMBER_OF_PLAYERS = 4
  DICE_TO_WIN = 0
  WINNERS = []

  def start
    players = NUMBER_OF_PLAYERS.times.collect { Player.new }

    announce_players(players)

    sleep(1)
    puts "Let's start the rolling!"
    round = 1

    loop do
      puts "-- Round #{round} --"
      players.each do |player|
        player.rolls = Dice.roll(player.dice)
        Results.fetch(player)

        WINNERS << player if player.dice == DICE_TO_WIN
      end

      break unless WINNERS.empty?
      round += 1
    end

    announce_winners(round)
  end

  private

  def announce_players(players)
    puts "The Players are:"
    players.each { |player| puts "- #{player.name}" }
    puts "**********"
  end

  def announce_winners(round)
    puts "Game Over"
    puts "--------------------"
    puts "The game ended on round #{round}"
    puts "The winners are:"
    WINNERS.each { |winner| puts "- #{winner.name}" }
  end
end
