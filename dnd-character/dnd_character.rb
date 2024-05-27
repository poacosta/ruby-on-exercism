# frozen_string_literal: true

class DndCharacter
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def initialize
    @strength = 10
    @dexterity = 10
    @constitution = 10
    @intelligence = 10
    @wisdom = 10
    @charisma = 10
    @hitpoints = 10
  end

  def self.modifier(score)
    (score - 10) / 2
  end
end
