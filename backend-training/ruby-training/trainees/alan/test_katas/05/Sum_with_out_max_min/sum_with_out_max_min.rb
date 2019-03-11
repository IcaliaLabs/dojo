class SumWithOutMaxMin

    def self.remove_min_and_max(array_of_intergers)
        sorted_array = array_of_intergers.sort
        return sorted_array[1..-2]
    end

    def self.sum_array(array_of_intergers)
        remove_min_and_max(array_of_intergers).reduce(:+)
    end
end