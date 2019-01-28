require 'rspec'
require_relative 'new_array'

describe "NewArray" do
    describe "#sum_without_max_and_min" do
        it "should return the sum of the array without the maximum and minimum value" do
           example_array = NewArray.new([1,2,8,10])
           result = example_array.sum_without_max_and_min
           expect(result).to eq(10)
        end

        it "should return the sum of the array without one minimum if there is more than one minimum" do
            example_array = NewArray.new([1,2,10,8,10])
            result = example_array.sum_without_max_and_min
            expect(result).to eq(20)
        end

        it "should return the sum of the array without one maximum if there is more than one maximum" do
            example_array = NewArray.new([1,2,1,8,1,10])
            result = example_array.sum_without_max_and_min
            expect(result).to eq(12)
        end
    end
end
