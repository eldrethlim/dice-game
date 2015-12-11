require "spec_helper"

class DiceSpec

  describe Dice do
    let (:hundred_rolls) { Dice.roll(100) }
    let (:five_rolls) { Dice.roll(5) }
    let (:three_rolls) { Dice.roll(3) }

    it "rolls within 1..6" do
      invalid_numbers = hundred_rolls.select { |roll| roll < 1 || roll > 6 }
      expect(invalid_numbers).to be_empty
    end

    it "rolls correct dice amount" do
      expect(hundred_rolls.count).to eq(100)
      expect(five_rolls.count).to eq(5)
      expect(three_rolls.count).to eq(3)
    end
  end
end
