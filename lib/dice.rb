class Dice
  attr_accessor :dice

  def initialize(dice)
    @dice = dice
  end

  def roll
    dice.times.collect { rand 1..6 }
  end
end
