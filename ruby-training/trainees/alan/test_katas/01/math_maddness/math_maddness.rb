require 'rspec/autorun'

class Aritmetic_operations
    
    def self.add(first_number, second_number)
       first_number +  second_number
    end
    
    def self.substraction(first_number, second_number)
        first_number - second_number
    end

    def self.multiply(first_number, second_number)
        first_number * second_number
    end

    def self.divide(first_number, second_number)
        first_number / second_number
    end
end

calculus = Aritmetic_operations.add(12, 4)
calculus = Aritmetic_operations.substraction(15,5)
calculus = Aritmetic_operations.multiply(8,6)
calculus = Aritmetic_operations.divide(16,4)
           
