class Arrayify

    def self.to_inverse_array(number)
        number.to_s.reverse.chars.map(&:to_i)
    end
end