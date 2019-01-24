class FizzBuzzGame
    
    def self.is_it_fizz? (number)
        number % 3 == 0
    end

    def self.is_it_buzz? (number)
        number % 5 == 0
    end

    def self.is_it_fizzbuzz? (number)
        is_it_buzz?(number) and is_it_fizz?(number)
    end

    def self.has_it_a_3? (number)
        number.to_s.include?("3")
    end

    def self.has_it_a_5? (number)
        number.to_s.include?("5")
    end

    def self.game(number)
        if is_it_fizzbuzz?(number)
            "FizzBuzz"
        elsif is_it_buzz?(number) or has_it_a_5?(number)
            "Buzz"
        elsif is_it_fizz?(number) or has_it_a_3?(number)
            "Fizz"
        else 
            number
        end
    end
end
