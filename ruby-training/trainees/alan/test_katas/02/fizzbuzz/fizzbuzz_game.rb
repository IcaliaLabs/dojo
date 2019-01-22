class FizzBuzzGame
    
    def self.it_is_fizz? (number)
        number % 3 == 0
    end

    def self.it_is_buzz? (number)
        number % 5 == 0
    end

    def self.it_is_fizzbuzz? (number)
        it_is_buzz?(number) and it_is_fizz?(number)
    end

    def self.it_has_a_3? (number)
        number.to_s.include?("3")
    end

    def self.it_has_a_5? (number)
        number.to_s.include?("5")
    end

    def self.game(number)
        if it_is_fizzbuzz?(number)
            "FizzBuzz"
        elsif it_is_buzz?(number) or it_has_a_5?(number)
            "Buzz"
        elsif it_is_fizz?(number) or it_has_a_3?(number)
            "Fizz"
        else 
            number
        end
    end
end
