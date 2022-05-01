# frozen_string_literal: true

class Raindrops
  DICT = { pling: 3, plang: 5, plong: 7 }.freeze

  def self.convert(n)
    f = []
    DICT.each_pair { |k, v| f << k.capitalize if (n % v).zero? }
    !f.empty? ? f.join : n.to_s
  end
end
