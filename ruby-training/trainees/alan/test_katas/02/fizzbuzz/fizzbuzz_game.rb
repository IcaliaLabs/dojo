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
end