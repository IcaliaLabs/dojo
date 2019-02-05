

class Arrayify
    def self.to_reversed_digits_array(number)
        array_of_digits = number.to_s.split("")
        array_of_digits.map(&:to_i).reverse
        end

end