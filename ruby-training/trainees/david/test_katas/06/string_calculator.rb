class StringCalculator

    def self.add(string_numbers)
        return 0 if string_numbers.empty?
        numbers = string_numbers.split(",").map(&:to_i)
        return numbers.reduce(:+)
    end
end