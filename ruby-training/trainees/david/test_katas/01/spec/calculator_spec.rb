require 'rspec/autorun'
require_relative '../calculator'

describe Calculator do
    describe "#add" do
        it "returns the sum of two values" do
            expect(Calculator.add(3, 4)).to eq(7)
        end
        it "should return nil when either of the operands is a string" do
            expect(Calculator.add(4, "5")).to eq(nil)
            expect(Calculator.add("4", 5)).to eq(nil)
        end
    end
    describe "#subtract" do
        it "should return nil when either of the operands is a string" do
            expect(Calculator.subtract(4, "5")).to eq(nil)
            expect(Calculator.subtract("4", 5)).to eq(nil)
        end
        it "should return the subtraction of two values" do
            expect(Calculator.subtract(3, 4)).to eq(-1)
        end
    end
    describe "#multiply" do
        it "should return nil when either of the operands is a string" do
            expect(Calculator.multiply(4, "5")).to eq(nil)
            expect(Calculator.multiply("4", 5)).to eq(nil)
        end
        it "should return the multiplication of two values" do
            expect(Calculator.multiply(3, 4)).to eq(12)
        end
    end
    describe "#divide" do
        it "should return nil when the denomitator is zero" do
            expect(Calculator.divide(4, 0)).to eq(nil)
        end
        it "should return the division of two values" do
            expect(Calculator.divide(4, 4)).to eq(1)
        end
        it "should return nil when either of the operands is a string" do
            expect(Calculator.divide(4, "5")).to eq(nil)
            expect(Calculator.divide("4", 5)).to eq(nil)
        end
    end
end