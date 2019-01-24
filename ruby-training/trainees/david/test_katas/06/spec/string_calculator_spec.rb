require 'rspec/autorun'
require_relative '../string_calculator'

describe StringCalculator do
    describe ".add" do
        it "should return 0 if string is empty" do
            expect(StringCalculator.add("")).to eq(0)
        end
    end
end