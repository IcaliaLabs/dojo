
class SumWithOutMaxMin
    
    def self.sort_array_of_intergers (array_of_intergers)
        array_of_intergers.sort
    end

    def self.eliminate_min_and_max (array_of_intergers)
        sorted_array = sort_array_of_intergers(array_of_intergers)
        sorted_array.shift
        sorted_array.pop
        return sorted_array
    end

    def self.sum_array (array_of_intergers)
        eliminate_min_and_max(array_of_intergers).reduce(:+)
    end
end