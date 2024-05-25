# frozen_string_literal: true

class Microwave
  def initialize(input)
    @input = input.to_s.rjust(3, '0')
  end

  def timer
    minutes = @input[..-3].to_i
    seconds = @input[-2..].to_i
    "#{(minutes + seconds / 60).to_s.rjust(2, '0')}:#{(seconds % 60).to_s.rjust(2, '0')}"
  end
end
