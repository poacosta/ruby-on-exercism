class Diamond
  def self.make_diamond(letter)
    return "A\n" if letter == 'A'

    alphabet = ('A'..'Z').to_a
    index = alphabet.index(letter)
    diamond = []
    spikes(diamond, index)
    (1..index).each { |i| line(diamond, index, i, alphabet) }
    (1..index - 1).reverse_each { |i| line(diamond, index, i, alphabet) }
    spikes(diamond, index)
    compose(diamond)
  end

  def self.spikes(diamond, index)
    diamond << "#{' ' * index}A#{' ' * index}"
  end

  def self.line(diamond, index, i, alphabet)
    diamond << ' ' * (index - i) + alphabet[i] + ' ' * (2 * i - 1) + alphabet[i] + ' ' * (index - i)
  end

  def self.compose(diamond)
    "#{diamond.join("\n")}\n"
  end
end
