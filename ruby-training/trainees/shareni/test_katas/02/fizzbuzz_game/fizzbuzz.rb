class FizzBuzz
    def play(number)
        if number % 3 == 0 and number % 5 == 0
            "FizzBuzz"
        elsif (number % 3 == 0) || (number.to_s.include? "3")
            "Fizz"
        elsif (number % 5 == 0 )|| (number.to_s.include? "5")
            "Buzz"
        else
            number
        end
    end
end