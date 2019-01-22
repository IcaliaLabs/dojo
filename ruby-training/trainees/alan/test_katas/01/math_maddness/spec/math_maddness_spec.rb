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
end
describe Aritmetic_operations do
    describe "#add" do
        it "Sum two numbers and the result is equal to 16" do
             calculus = Aritmetic_operations.add(12, 4)
            expect(calculus).to eq(16)
        end
    end

    describe "#substraction" do
        it "The first number is substracted by the second number, the result is 10" do
            calculus = Aritmetic_operations.substraction(15,5)
            expect(calculus).to eq(10)
        end
    end

    describe "#multiply" do
        it "The result, that is 48, is the multiply of the two numbers" do
            calculus = Aritmetic_operations.multiply(8,6)
            expect(calculus).to eq(48)
        end
    end
end

