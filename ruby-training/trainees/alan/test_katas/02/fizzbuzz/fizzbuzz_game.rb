class FizzBuzzGame
    
    def self.is_it_fizz?(number)
        number % 3 == 0
    end

    def self.is_it_buzz?(number)
        number % 5 == 0
    end

    def self.is_it_fizzbuzz?(number)
        is_it_buzz?(number) && is_it_fizz?(number)
    end

    def self.game(number)
        if is_it_fizzbuzz?(number)
            "FizzBuzz"
        elsif is_it_buzz?(number) || number.to_s.include?("5")
            "Buzz"
        elsif is_it_fizz?(number) || number.to_s.include?("3")
            "Fizz"
        else 
            number
        end
    end
end
