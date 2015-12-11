class Dice
  class << self
    def roll(dice)
      dice.times.collect { rand 1..6 }
    end
  end
end
