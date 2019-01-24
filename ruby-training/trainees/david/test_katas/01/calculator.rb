class Calculator

    def self.add(a, b)
        return nil if b.is_a?(String) or a.is_a?(String)
        a + b
    end
    
    def self.subtract(a, b)
        return nil if b.is_a?(String) or a.is_a?(String)
        a - b
    end
    
    def self.multiply(a, b)
        return nil if b.is_a?(String) or a.is_a?(String)
        a * b
    end
    
    def self.divide(numerator, denominator)
        return nil if numerator.is_a?(String) or denominator.is_a?(String)
        return nil if denominator == 0
        numerator / denominator
    end
end