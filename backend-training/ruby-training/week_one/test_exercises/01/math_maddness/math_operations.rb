# frozen_string_literal: true

class MathOperations
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def addition
    @num1 + @num2
  end

  def subtraction
    @num1 - @num2
  end

  def multiplication
    @num1 * @num2
  end

  def division
    @num1 / @num2
  end
end
