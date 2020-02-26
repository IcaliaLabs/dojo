# frozen_string_literal: true

class GameFizzBuzz
  def play_fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'FizzBuzz'
    elsif (number % 3).zero?
      'Fizz'
    elsif (number % 5).zero?
      'Buzz'
    else
      number.to_s
    end
  end
end
