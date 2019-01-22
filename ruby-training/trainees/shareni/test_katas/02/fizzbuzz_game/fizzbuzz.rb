class FizzBuzz
    def play(number)
        if number % 3 == 0 and number % 5 == 0
            "FizzBuzz"
        elsif number % 3 == 0
            "Fizz"
        elsif number % 5 == 0
            "Buzz"
        else
            number
        end
    end
end