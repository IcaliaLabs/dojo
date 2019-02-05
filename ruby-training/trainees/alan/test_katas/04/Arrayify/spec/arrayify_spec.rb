require 'rspec/autorun'
require_relative '../arrayify.rb'

describe Arrayify do
    describe ".to_reversed_digits_array" do
        it "should return an array with the digits of a number in reverse order" do            
            expect(Arrayify.to_reversed_digits_array(1235)).to match_array([5,3,2,1])
        end
    end
end