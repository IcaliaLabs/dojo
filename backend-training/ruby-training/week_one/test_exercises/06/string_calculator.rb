# frozen_string_literal: true

class StringCalculator
  def int_add(string_numbers)
    return 0 if string_numbers.empty?

    string_numbers.split(',').map(&:to_i).sum
  end
end
