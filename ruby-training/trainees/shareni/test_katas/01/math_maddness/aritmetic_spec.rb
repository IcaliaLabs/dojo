require 'rspec'

class Calculator
    def add(first_number, second_number)
        first_number + second_number
    end

    def substract(first_number, second_number)
        first_number - second_number
    end

    def multiply(first_number, second_number)
        first_number * second_number
    end

    def divide(first_number, second_number)
        first_number / second_number
    end
end

describe "Calculator" do
    it "adds two numbers" do
        calculator = Calculator.new
        result = calculator.add(5,4)
        expect(result).to eq(9)
    end

    it "substracts two numbers" do
        calculator = Calculator.new
        result = calculator.substract(4,5)
        expect(result).to eq(-1)
    end

    it "multiplies two numbers" do
        calculator = Calculator.new
        result = calculator.multiply(5,6)
        expect(result).to eq(30)
    end

    describe "#divide" do
        it "divides two numbers that aren't 0" do
            calculator = Calculator.new
            result = calculator.divide(10,5)
            expect(result).to eq(2)
        end
    end
end
