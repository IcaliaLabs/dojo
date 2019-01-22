require 'rspec'
require './converter'

describe "Converter" do
    describe "#convert_number_to_reverse_array" do
        it "returns a reverse array of the number" do
            converter = Converter.new
            result = converter.convert_number_to_reverse_array(129450)
            expect(result).to eq([0,5,4,9,2,1])
        end
    end
    
end