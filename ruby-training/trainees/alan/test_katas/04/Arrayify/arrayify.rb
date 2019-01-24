

class Arrayify
    def self.to_a_digits_array (number)
        array_of_digits = number.to_s.split("")
        array_of_digits.map(&:to_i)
    end

    def self.make_it_reverse (number)
        to_a_digits_array(number).reverse
    end
end