require 'rspec'
require './new_array'

describe "Array" do
    describe "#sum" do
        it "returns the sum of the array without the maximum and minimum value" do
           example_array = NewArray.new([1,2,8,10])
           result = example_array.sum_without_max_and_min
           expect(result).to eq(10)
        end

        it "returns the sum of the array without one minimum if there are more than one minimums" do
            example_array = NewArray.new([1,2,10,8,10])
            result = example_array.sum_without_max_and_min
            expect(result).to eq(20)
        end

        it "returns the sum of the array without one maximum if there are more than one maximums" do
            example_array = NewArray.new([1,2,1,8,1,10])
            result = example_array.sum_without_max_and_min
            expect(result).to eq(12)
        end
    end
end
