class StringCalculator

    def self.add(string_numbers)
        return 0 if string_numbers.empty?
        numbers = string_numbers.split(",").map(&:to_i)
        return numbers.first if numbers.size < 2
    end
end