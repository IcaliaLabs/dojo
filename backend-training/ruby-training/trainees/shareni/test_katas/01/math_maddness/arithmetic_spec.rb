require 'rspec'

class Calculator
    def add(first_operand, second_operand)
        first_operand + second_operand
    end

    def subtract(first_operand, second_operand)
        first_operand - second_operand
    end

    def multiply(first_operand, second_operand)
        first_operand * second_operand
    end

    def divide(first_operand, second_operand)
        if second_operand != 0
            first_operand / second_operand
        else
            "Can't divide by 0"
        end
    end
end

describe "Calculator" do
    describe "#add" do
        it "adds two numbers" do
            calculator = Calculator.new
            result = calculator.add(5, 4)
            expect(result).to eq(9)
        end
    end

    describe "#subtract" do
        it "subtracts two numbers" do
            calculator = Calculator.new
            result = calculator.subtract(4, 5)
            expect(result).to eq(-1)
        end
    end

    describe "#multiply" do
        it "multiplies two numbers" do
            calculator = Calculator.new
            result = calculator.multiply(5, 6)
            expect(result).to eq(30)
        end
    end

    describe "#divide" do
        it "divides two numbers that aren't 0" do
            calculator = Calculator.new
            result = calculator.divide(10, 5)
            expect(result).to eq(2)
        end

        it "shows an error message if the denominator is 0" do
            calculator = Calculator.new
            result = calculator.divide(5, 0)
            expect(result).to eq("Can't divide by 0")
        end
    end
end
