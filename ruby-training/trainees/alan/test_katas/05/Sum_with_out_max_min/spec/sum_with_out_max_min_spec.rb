require 'rspec/autorun'
require '../sum_with_out_max_min.rb'

describe SumWithOutMaxMin do

    describe ".sort_array" do
        it "should return a sorted array from smallest to largest value" do
            expect([3,6,9,4]).to match_array([3,4,6,9])
        end
    end

end