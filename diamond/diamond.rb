# frozen_string_literal: true

# Diamond
class Diamond
  ALPHABET = ('A'..'Z').to_a.freeze

  def self.make_diamond(letter)
    return "A\n" if letter == 'A'

    index = ALPHABET.index(letter)
    diamond = []
    spike(diamond, index)
    (1..index).each { |i| line(diamond, index, i) }
    (1..index - 1).reverse_each { |i| line(diamond, index, i) }
    spike(diamond, index)
    compose(diamond)
  end

  def self.spike(diamond, index)
    diamond << "#{' ' * index}A#{' ' * index}"
  end

  def self.line(diamond, index, idx)
    letter = ALPHABET[idx]
    diamond << "#{' ' * (index - idx)}#{letter}#{' ' * (2 * idx - 1)}#{letter}#{' ' * (index - idx)}"
  end

  def self.compose(diamond)
    "#{diamond.join("\n")}\n"
  end
end
