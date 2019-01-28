class Adder

    def self.add(numbers)
        numbers.sort!.pop
        numbers.delete_at(0)
        numbers.reduce(:+)
    end

    def self.add_other_way(numbers)
        numbers.delete(numbers.max)
        numbers.delete(numbers.min)
        numbers.reduce(:+)
    end
end