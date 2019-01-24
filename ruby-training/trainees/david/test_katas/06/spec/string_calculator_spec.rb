require 'rspec/autorun'
require_relative '../string_calculator'

describe StringCalculator do
    describe ".add" do
        it "should return 0 if string is empty" do
            expect(StringCalculator.add("")).to eq(0)
        end
        it "should return the string value in integer value in case the string only contains one number" do
            expect(StringCalculator.add("3")).to eq(3)
        end
    end
end