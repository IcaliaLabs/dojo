require 'rspec/autorun'
require_relative '../arrayify'

describe Arrayify do
    describe ".to_inverse_array" do
        it "should return an inverted array of integers" do
            expect(Arrayify.to_inverse_array(453622)).to eq([2,2,6,3,5,4])
        end
    end
end