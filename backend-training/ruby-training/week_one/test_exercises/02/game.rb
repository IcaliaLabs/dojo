# frozen_string_literal: true

class GameFizzBuzz
  def play_fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'FizzBuzz'
    elsif (number % 3).zero? || (number.to_s.include? '3') == true
      'Fizz'
    elsif (number % 5).zero? || (number.to_s.include? '5') == true
      'Buzz'
    else
      number.to_s
    end
  end
end
