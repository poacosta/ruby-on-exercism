# frozen_string_literal: true

class Luhn
  def self.valid?(str)
    str = str.strip! || str
    return false if forbidden?(str)

    luhn?(str)
  end

  def self.forbidden?(str)
    str.length == 1 || str.match?(/[^\d+ ]/)
  end

  def self.luhn?(str)
    str.scan(/\d/).reverse
       .each_slice(2)
       .sum { |i, k = 0| i.to_i + (k.to_i * 2).digits.sum }
       .modulo(10).zero?
  end
end
