
class Calculator

    def self.add(left_operand, right_operand)
        return nil if either_operand_is_string?(left_operand, right_operand)
        left_operand + right_operand
    end
    
    def self.subtract(left_operand, right_operand)
        return nil if either_operand_is_string?(left_operand, right_operand)
        left_operand - right_operand
    end
    
    def self.multiply(left_operand, right_operand)
        return nil if either_operand_is_string?(left_operand, right_operand)
        left_operand * right_operand
    end
    
    def self.divide(numerator, denominator)
        return nil if either_operand_is_string?(numerator, denominator)
        return nil if denominator == 0
        numerator / denominator
    end

    private

    def self.either_operand_is_string?(left_operand, right_operand)
        left_operand.is_a?(String) || right_operand.is_a?(String)
    end
end