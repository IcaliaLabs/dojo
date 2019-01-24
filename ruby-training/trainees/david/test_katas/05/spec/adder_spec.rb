require 'rspec/autorun'
require_relative '../adder'

describe Adder do
    describe ".add" do
        it "should return the sum of all numbers in the array except for the biggest and smallest" do
            expect(Adder.add([2,2,6,3,5,4])).to eq(14)
        end
    end
    describe ".add_other_way" do
        it "should return the sum of all numbers in the array except for the biggest and smallest" do
            expect(Adder.add([2,2,6,3,5,4])).to eq(14)
        end
    end
end