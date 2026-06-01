=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  
  # Abilities array
  # 0: strength
  # 1: dexterity
  # 2: constitution
  # 3: intelligence
  # 4: wisdom
  # 5: charisma
  @abilities

  NUMBER_OF_ABILITIES = 6
  INITIAL_HITPOINTS = 10

  # DICE
  NUMBER_OF_DICE = 4
  NUMBER_OF_SIDES = 6

  def self.modifier(constitution)
    ((constitution - 10) / 2).floor
  end

  def strength
    @abilities[0]
  end

  def dexterity
    @abilities[1]
  end

  def constitution
    @abilities[2]
  end

  def intelligence
    @abilities[3]
  end

  def wisdom
    @abilities[4]
  end

  def charisma
    @abilities[5]
  end

  def hitpoints
    INITIAL_HITPOINTS + DndCharacter.modifier(constitution)
  end

  def initialize
    abilities = []
  
    NUMBER_OF_ABILITIES.times do |ability|
      scores = []
      NUMBER_OF_DICE.times do |i|
        scores.push(rand(1..NUMBER_OF_SIDES))
      end
      min_value = scores.min
      min_index = scores.index(min_value)
      scores.delete_at(min_index)

      abilities.push(scores.sum)
    end
    @abilities = abilities
  end
end
