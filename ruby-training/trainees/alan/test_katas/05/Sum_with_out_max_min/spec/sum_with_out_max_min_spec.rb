require 'rspec/autorun'
require_relative '../sum_with_out_max_min.rb'

describe SumWithOutMaxMin do


    describe ".eliminate_min_and_max" do
        it "should return an array without the first and last element" do
            expect(SumWithOutMaxMin.remove_min_and_max([6,4,9,3])).to match_array([4,6])
        end
    end

    describe ".sum_array" do 
        it "should return the sum of the elements of the array" do
            expect(SumWithOutMaxMin.sum_array([6,4,9,3])).to eq(10)
        end
    end
end