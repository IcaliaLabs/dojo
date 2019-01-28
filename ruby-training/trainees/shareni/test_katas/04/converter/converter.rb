class Converter
    def to_reverse_array(original_number)
       to_array(original_number).reverse 
    end

    def to_array(original_number)
        individual_digits = original_number.to_s.split('')
        individual_digits.map(&:to_i)
    end
end