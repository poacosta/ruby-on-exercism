# frozen_string_literal: true

class Hamming
  def self.compute(chain1, chain2)
    raise ArgumentError if chain1.length != chain2.length

    return 0 if chain1.eql?(chain2)

    chain1.chars.zip(chain2.chars).count { |v| v[0] != v[1] }
  end
end
