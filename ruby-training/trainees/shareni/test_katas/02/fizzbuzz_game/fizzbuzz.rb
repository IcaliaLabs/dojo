class FizzBuzz
    def play(number)
        return "FizzBuzz" if fizzbuzz(number)
        return "Fizz" if fizz(number)
        return "Buzz" if buzz(number)
        number
    end

    def fizz(number)
        (number % 3 == 0) || (number.to_s.include? "3")
    end

    def buzz(number)
        (number % 5 == 0 )|| (number.to_s.include? "5")
    end

    def fizzbuzz(number)
        number % 3 == 0 && number % 5 == 0
    end

end