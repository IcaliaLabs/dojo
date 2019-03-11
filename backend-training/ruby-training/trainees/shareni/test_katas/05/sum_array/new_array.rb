class NewArray
    def initialize(example_array)
        @example_array = example_array
    end

    def sum_without_max_and_min
        array_without_max_and_min.reduce(:+)
    end

    def array_without_max_and_min
        @example_array.sort.slice!(1..-2)
    end
end