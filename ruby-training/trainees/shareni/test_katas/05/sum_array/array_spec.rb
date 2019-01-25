require 'rspec'
require './new_array'

describe "Array" do
    describe "#sum" do
        it "returns the sum of the array without the maximum and minimum value" do
           example_array = NewArray.new([1,2,8,10])
           result = example_array.sum_without_max_and_min
           expect(result).to eq(10)
        end
    end
end
