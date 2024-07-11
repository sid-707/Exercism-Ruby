class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)

    raise ArgumentError unless first_operand.is_a?(Integer)
    raise ArgumentError unless second_operand.is_a?(Integer)

    answer = case operation
    when '+'
      first_operand + second_operand
    when '/'
      begin
        first_operand / second_operand
      rescue
        return "Division by zero is not allowed."
      end
    when '*'
      first_operand * second_operand
    else
      raise UnsupportedOperation
    end

    return "#{first_operand} #{operation} #{second_operand} = #{answer}"
  end
end
