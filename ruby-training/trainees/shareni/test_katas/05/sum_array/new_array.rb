class NewArray
    def initialize(example_array)
        @example_array = example_array
    end

    def sum
        max = @example_array.max
        min = @example_array.min
        index_first_max = @example_array.index(max)
        index_first_min = @example_array.index(min)
        @example_array.delete_at(index_first_max)
        @example_array.delete_at(index_first_min)
        @example_array.reduce(:+)
    end
end