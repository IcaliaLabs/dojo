require 'rspec'
require_relative 'converter'

describe "Converter" do
    describe "#to_reverse_array" do
        it "returns a reverse array of the number" do
            converter = Converter.new
            result = converter.to_reverse_array(129450)
            expect(result).to eq([0,5,4,9,2,1])
        end
    end
    
    describe "#to_array" do
        it "returns an array of the number" do
            converter = Converter.new
            result = converter.to_array(129450)
            expect(result).to eq([1,2,9,4,5,0])
        end
    end
end