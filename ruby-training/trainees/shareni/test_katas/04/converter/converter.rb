class Converter
    def convert_number_to_reverse_array(original_number)
       numbers = original_number.to_s.split('')
        numbers.map(&:to_i).reverse 
    end
end