class FizzBuzz

    def self.play(num)
        return "fizzbuzz" if num % 3 == 0 and num % 5 == 0
        return "fizz" if num % 3 == 0 or num.to_s.include?("#{3}")
        return "buzz" if num % 5 == 0 or num.to_s.include?("#{5}")
        num
    end
end