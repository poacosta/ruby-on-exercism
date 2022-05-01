# frozen_string_literal: true

class Phrase
  def initialize(sentence)
    @words = sentence.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @words.group_by(&:itself).transform_values(&:count)
  end
end
