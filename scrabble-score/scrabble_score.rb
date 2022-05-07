# frozen_string_literal: true

class Scrabble
  DICT = { '1': %w[A E I O U L N R S T],
           '2': %w[D G],
           '3': %w[B C M P],
           '4': %w[F H V W Y],
           '5': %w[K],
           '8': %w[J X],
           '10': %w[Q Z] }.freeze

  def initialize(word)
    @word = word&.upcase
  end

  def score
    sum = 0
    @word&.each_char { |c| DICT.select { |k, v| sum += k.to_s.to_i || 0 if v.include? c } }
    sum
  end

  def self.score(word)
    new(word).score
  end
end
