
class SumWithOutMaxMin
    
   
    def self.remove_min_and_max(array_of_intergers)
        sorted_array = array_of_integers.sort
        sorted_array.shift
        sorted_array.pop
        return sorted_array
    end

    def self.sum_array(array_of_intergers)
        remove_min_and_max(array_of_intergers).reduce(:+)
    end
end