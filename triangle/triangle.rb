class Triangle
  def initialize(sides)
    @sides = sides.sort!
  end

  def valid?
    a, b, c = @sides
    a + b > c && @sides.all?(&:positive?)
  end

  def type
    return unless valid?

    case @sides.uniq.size
    when 1 then :equilateral
    when 2 then :isosceles
    when 3 then :scalene
    else :invalid
    end
  end

  def equilateral?
    type == :equilateral
  end

  def isosceles?
    %i[equilateral isosceles].include?(type)
  end

  def scalene?
    type == :scalene
  end
end
