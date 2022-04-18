class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.divide(op1, op2)
    raise ZeroDivisionError, 'Division by zero is not allowed.' if op2.zero?

    "#{op1} / #{op2} = #{op1 / op2}"
  end

  def self.string?(operand)
    operand.is_a? String
  end

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError, 'Error' if string?(first_operand) || string?(second_operand)

    case operation
    when '+'
      "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
    when '*'
      "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    else
      begin
        divide(first_operand, second_operand)
      rescue ZeroDivisionError => e
        e.message
      end
    end
  end
end
