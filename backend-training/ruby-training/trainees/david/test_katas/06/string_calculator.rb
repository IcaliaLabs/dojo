class StringCalculator

    def self.add(string_numbers)
        return 0 if string_numbers.empty?
        numbers = string_numbers.split(/\D/).map(&:to_i)
        only_small_numbers = numbers.select { |number| number < 1000 }
        only_small_numbers.reduce(:+)
    end
end