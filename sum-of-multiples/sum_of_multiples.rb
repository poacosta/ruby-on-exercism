class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    (1...limit).select do |num|
      @multiples.any? { |multiple| (num % multiple).zero? }
    end.sum
  end
end
