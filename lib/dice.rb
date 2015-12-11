class Dice
  def self.roll(dice)
    dice.times.collect { rand 1..6 }
  end
end
