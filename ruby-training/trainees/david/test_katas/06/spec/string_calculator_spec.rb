require 'rspec/autorun'
require_relative '../string_calculator'

describe StringCalculator do
    describe ".add" do
        it "should return 0 if string is empty" do
            expect(StringCalculator.add("")).to eq(0)
        end
        it "should return the string value in integer form in case the string only contains one number" do
            expect(StringCalculator.add("3")).to eq(3)
        end
        it "should return the sum of the string values in integer form in case there are 2 or more values in the list" do
            expect(StringCalculator.add("3,5,2")).to eq(10)
        end
        it "should return the sum of the string number values in integer form ignoring all other characters in the string" do
            expect(StringCalculator.add("//[***]\n1***2***3")).to eq(6)
        end
    end
end