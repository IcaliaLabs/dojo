# frozen_string_literal: true

# This class creates a calculator of numbers in a string
class StringCalculator
  def int_add(string)
    return 0 if string.empty?

    numbers = to_numbers(string)
    numbers_classified = numbers_classification(numbers)
    positives = numbers_classified.first
    negatives = numbers_classified.last

    unless negatives.empty?
      raise ArgumentError, "Negatives not allowed: #{negatives.join(',')}"
    end

    positives.inject(0) { |sum, x| x <= 1000 ? sum + x : sum + 1 }
  end

  def to_numbers(string_numbers)
    string_numbers.split(/[^0-9-]+/).map(&:to_i)
  end

  def numbers_classification(numbers)
    negatives = []
    positives = []

    numbers.each do |number|
      number >= 0 ? positives << number : negatives << number
    end

    [positives, negatives]
  end
end
