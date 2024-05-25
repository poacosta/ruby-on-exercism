module ArmstrongNumbers
  def self.include?(number)
    number == number.digits.sum { |digit| digit**number.digits.size }
  end
end
