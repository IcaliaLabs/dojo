# frozen_string_literal: true

class StringCalculator
  def int_add(string_numbers)
    return 0 if string_numbers.empty?

    numbers = string_numbers.split(/[^0-9-]+/).map(&:to_i)

    negatives = []
    positives = []

    numbers.each do |number|
      if number >= 0
        positives << number
      else
        negatives << number
      end
    end

    unless negatives.empty?
      raise ArgumentError, "Negatives not allowed: #{negatives.join(',')}"
    end

    positives.inject(0) { |sum, x| x <= 1000 ? sum + x : sum + 1 }
  end
end
