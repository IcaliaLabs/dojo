require 'rspec/autorun'
require '../arrayify.rb'

describe Arrayify do
        describe ".to_a_digits_array" do
            it "should return an array of digits of the number" do
            expect(Arrayify.to_a_digits_array(1235)).to match_array([1,2,3,5])
        end
    end
end