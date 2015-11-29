class Dice
  attr_accessor :dices

  def initialize(dices)
    @dices = dices
  end

  def roll
    dices.times.collect { rand 1..6 }
  end
end
